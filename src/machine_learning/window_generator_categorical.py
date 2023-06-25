import numpy as np
import pandas as pd
import plotly.graph_objects as go
import tensorflow as tf
from plotly.subplots import make_subplots


class WindowGenerator:
    """
    Class for creating the windows used for training, validation and testing. \\
    With `train`, `val` and `test` provides the datasets that can be passed to `model.fit`. \\
    Compared with the WindowGenerator from the file `window_generator.py` this only differs in the support for a category label with one hot encoding.
    """

    def __init__(self, input_width: int, label_width: int, df: pd.DataFrame, label_columns=None, window_step=1):
        """
        Initialise a new WindowGenerator

        Args:
            input_width (int): Length of the input
            label_width (int): Length of the label that should be predicted
            df (pd.DataFrame): Dataframe out of which the windows are generated
            label_columns (_type_, optional): List of the column names from `df` that should be included in the label. Defaults to None.
            window_step (int, optional): Increment in which a new window should be started after the previous one. Defaults to 1.
        """
        self.df = df
        self.window_step = window_step

        self.total_window_size = input_width + label_width
        # set datasets
        self.__generateWindows()

        # Work out the label column indices.
        self.label_columns = label_columns  # in our case pm10 or pm2.5
        if label_columns is not None:
            self.label_columns_indices = {name: i for i, name in enumerate(label_columns)}
        self.column_indices = {name: i for i, name in enumerate(df.columns)}

        # Work out the window parameters.
        self.input_width = input_width
        self.label_width = label_width

        self.input_slice = slice(0, input_width)
        self.input_indices = np.arange(self.total_window_size)[self.input_slice]

        self.label_start = self.total_window_size - self.label_width
        self.labels_slice = slice(self.label_start, None)
        self.label_indices = np.arange(self.total_window_size)[self.labels_slice]

    def split_window(self, features):
        """
        Args:
            features: shape=[number of windows, window length, features]
        """
        # Seperates windows into labels and inputs
        inputs = features[:, self.input_slice, :]
        labels = features[:, self.labels_slice, :]

        if self.label_columns is not None:
            labels = tf.stack([labels[:, :, self.column_indices[name]] for name in self.label_columns], axis=-1)

            # labels = tf.stack(
            #    [
            #        tf.one_hot(tf.cast(labels[:, :, self.column_indices[name]], "int64"), 6)
            #        for name in self.label_columns
            #    ],
            #    axis=-1,
            # )

            print(labels.shape)
        # one hot encode labels
        # Slicing doesn't preserve static shape information, so set the shapes
        # manually. This way the `tf.data.Datasets` are easier to inspect.
        inputs.set_shape([None, self.input_width, None])
        # labels.set_shape([None, self.label_width, 6])
        labels.set_shape([None, self.label_width, None])

        return inputs, labels

    def plot(
        self,
        model=None,
        plot_col="pm10",
        max_subplots=3,
        offset=0,
        plot_version="train",
    ):
        if plot_version == "val":
            inputs, labels = self.split_window(self.windows_val[offset : offset + max_subplots])
        elif plot_version == "train":
            inputs, labels = self.split_window(self.windows_train[offset : offset + max_subplots])
        elif plot_version == "test":
            inputs, labels = self.split_window(self.windows_test[offset : offset + max_subplots])
        else:
            return
        fig = make_subplots(rows=3, cols=1, row_heights=[400, 400, 400])
        plot_col_index = self.column_indices[plot_col]
        max_n = min(max_subplots, len(inputs))
        for n in range(max_n):
            fig.add_trace(
                go.Scatter(
                    x=self.input_indices,
                    y=inputs[n, :, plot_col_index].numpy(),
                    name="Inputs",
                    marker=dict(color="blue"),
                ),
                row=n + 1,
                col=1,
            )

            if self.label_columns:
                label_col_index = self.label_columns_indices.get(plot_col, None)
            else:
                label_col_index = plot_col_index

            # if label_col_index is None:
            # plot pm10 prediction value by default
            #    label_col_index = self.label_columns_indices.get("pm10", None)

            if label_col_index is None:
                # could not find pm10 index
                continue

            fig.add_trace(
                go.Scatter(
                    x=self.label_indices,
                    y=labels[n, :, label_col_index].numpy(),
                    name="Labels",
                    marker=dict(color="#2ca02c"),
                    mode="markers",
                ),
                row=n + 1,
                col=1,
            )
            if model is not None:
                predictions = model(inputs)
                fig.add_trace(
                    go.Scatter(
                        x=self.label_indices,
                        y=[p.argmax() for p in predictions[n, :, :].numpy()],
                        name="Predictions",
                        marker=dict(color="#ff7f0e"),
                        mode="markers",
                    ),
                    row=n + 1,
                    col=1,
                )

        fig.update_yaxes(title_text=plot_col, row=1, col=1)
        fig.update_yaxes(title_text=plot_col, row=2, col=1)
        fig.update_yaxes(title_text=plot_col, row=3, col=1)

        fig.update_layout(height=1200)
        fig.show()

    def __generateWindows(self, seed=42, train_size=0.7, val_size=0.1, test_size=0.2):
        windows = []

        for index in range(0, self.df["pm10"].size - self.total_window_size, self.window_step):
            window_begin = self.df.iloc[index]
            window_end = self.df.iloc[index + self.total_window_size]
            if window_end["timestamp"] - window_begin["timestamp"] == pd.Timedelta(hours=self.total_window_size):
                df_copy = self.df[index : index + (self.total_window_size)].copy().drop("timestamp", axis=1)
                windows.append(df_copy)

        windows_stack_train_val = tf.stack(windows[: int((train_size + val_size) * len(windows))])
        windows_stack_test = tf.stack(windows[int(len(windows) - len(windows) * test_size) : int(len(windows))])

        windows_stack_shuffled = tf.random.shuffle(windows_stack_train_val, seed=seed)

        train_count = int(len(windows_stack_shuffled) * (train_size / (train_size + val_size)))
        val_count = int(len(windows_stack_shuffled) * (val_size / (train_size + val_size)))

        self.windows_train = windows_stack_shuffled[:train_count]
        self.windows_val = windows_stack_shuffled[train_count : train_count + val_count]
        self.windows_test = tf.random.shuffle(windows_stack_test, seed=seed)

        self.df.drop("timestamp", axis=1, inplace=True)

    def make_dataset(self, data):
        ds = tf.data.Dataset.from_tensor_slices(data)
        ds = ds.batch(32)
        ds = ds.map(self.split_window)
        return ds

    @property
    def train(self):
        return self.make_dataset(self.windows_train)

    @property
    def val(self):
        return self.make_dataset(self.windows_val)

    @property
    def test(self):
        return self.make_dataset(self.windows_test)

    @property
    def example(self):
        """Get and cache an example batch of `inputs, labels` for plotting."""
        result = getattr(self, "_example", None)
        if result is None:
            # No example batch was found, so get one from the `.train` dataset
            result = next(iter(self.train))
            # And cache it for next time
            self._example = result
        return result

    def __repr__(self):
        return "\n".join(
            [
                f"Total window size: {self.total_window_size}",
                f"Input indices: {self.input_indices}",
                f"Label indices: {self.label_indices}",
                f"Label column name(s): {self.label_columns}",
            ]
        )
