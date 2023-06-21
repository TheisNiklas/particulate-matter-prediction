from copy import deepcopy
from typing import List

import tensorflow as tf
from window_generator import WindowGenerator


class Params:
    lstm_layer_count: int
    lstm_sizes: List[int]
    lstm_bidirectional: bool
    lstm_return_sequences: bool
    pooling_type: str
    kernel_sizes: List[int]
    dense_layer_count: int
    conv_layer_sizes: List[int]
    dropout: float
    input_width: int
    label_width: int
    batch_size: int
    loss_function: str
    window_generator: WindowGenerator

    def __init__(
        self,
        window_generator,
        lstm_layer_count=2,
        lstm_sizes=[64, 64],
        lstm_bidirectional=False,
        lstm_return_sequences=False,
        pooling_type="MaxPooling",
        kernel_sizes=[5, 5, 5],
        dense_layer_count=1,
        dense_layer_sizes=[512],
        conv_layer_sizes=[128, 256, 256],
        dropout=0.4,
        input_width=7 * 24,
        label_width=1 * 24,
        batch_size=32,
        loss_function="mse",
    ):
        self.window_generator = window_generator
        self.lstm_layer_count = lstm_layer_count
        self.lstm_sizes = lstm_sizes
        self.lstm_bidirectional = lstm_bidirectional
        self.lstm_return_sequences = lstm_return_sequences
        self.pooling_type = pooling_type
        self.kernel_sizes = kernel_sizes
        self.dense_layer_count = dense_layer_count
        self.dense_layer_sizes = dense_layer_sizes
        self.conv_layer_sizes = conv_layer_sizes
        self.dropout = dropout
        self.input_width = input_width
        self.label_width = label_width
        self.batch_size = batch_size
        self.loss_function = loss_function

    def to_name(self, epochs: int):
        name = "cnn_"
        if self.lstm_bidirectional:
            name += "bi"
        name += "lstm_"
        name += str(int(self.input_width / 24)) + "days_history_"
        name += str(int(self.label_width / 24)) + "days_pred_"
        name += str(epochs) + "_epochs"
        name += "_" + str(self.lstm_layer_count) + "lstm-layer"
        name += "_" + ",".join([str(i) for i in self.lstm_sizes])
        if self.lstm_return_sequences:
            name += "_ret-seq"
        if self.pooling_type != "MaxPooling":
            name += "_" + "pooling-" + self.pooling_type
        if self.dropout != 0.2:
            name += "_" + "dropout-0-" + str(int(self.dropout * 10))

        return name

    def to_dict(self):
        self_dict = deepcopy(self.__dict__)
        for key, value in self_dict.items():
            if isinstance(value, list):
                self_dict[key] = str(value)
        return self_dict


def init_model(params: Params):
    num_features = 1
    init_kernel_size = params.kernel_sizes[0]
    cnn_lstm_model = tf.keras.models.Sequential()
    # Shape [batch, time, features] => [batch, CONV_WIDTH, features]
    cnn_lstm_model.add(tf.keras.layers.Normalization())
    cnn_lstm_model.add(tf.keras.layers.Lambda(lambda x: x[:, :, :]))
    # Shape => [batch, 1, conv_units]
    cnn_lstm_model.add(
        tf.keras.layers.Conv1D(
            params.conv_layer_sizes[0], activation="relu", kernel_size=params.kernel_sizes[0], padding="same"
        )
    )
    if params.pooling_type == "MaxPooling":
        cnn_lstm_model.add(tf.keras.layers.MaxPooling1D())
    else:
        cnn_lstm_model.add(tf.keras.layers.AveragePooling1D())
    cnn_lstm_model.add(tf.keras.layers.BatchNormalization())  # TODO: useful to put it here?
    cnn_lstm_model.add(
        tf.keras.layers.Conv1D(
            params.conv_layer_sizes[1], activation="relu", kernel_size=params.kernel_sizes[1], padding="same"
        )
    )
    if params.pooling_type == "MaxPooling":
        cnn_lstm_model.add(tf.keras.layers.MaxPooling1D())
    else:
        cnn_lstm_model.add(tf.keras.layers.AveragePooling1D())
    cnn_lstm_model.add(tf.keras.layers.BatchNormalization())  # TODO: useful to put it here?
    cnn_lstm_model.add(
        tf.keras.layers.Conv1D(
            params.conv_layer_sizes[2], activation="relu", kernel_size=params.kernel_sizes[2], padding="same"
        )
    )

    cnn_lstm_model.add(tf.keras.layers.Reshape((-1, 256)))

    if params.lstm_layer_count != len(params.lstm_sizes):
        raise ValueError("lstm_layer_count must be same as the length of lstm_sizes!")

    # LSTM
    for i in range(params.lstm_layer_count):
        if i == params.lstm_layer_count:
            lstm_layer2 = tf.keras.layers.LSTM(params.lstm_sizes[i], return_sequences=params.lstm_return_sequences)
            if params.lstm_bidirectional:
                cnn_lstm_model.add(tf.keras.layers.Bidirectional(lstm_layer2))
            else:
                cnn_lstm_model.add(lstm_layer2)
        else:
            lstm_layer1 = tf.keras.layers.LSTM(params.lstm_sizes[i], return_sequences=True)
            if params.lstm_bidirectional:
                cnn_lstm_model.add(tf.keras.layers.Bidirectional(lstm_layer1))
            else:
                cnn_lstm_model.add(lstm_layer1)

    for i in range(params.dense_layer_count):
        cnn_lstm_model.add(tf.keras.layers.Dense(params.dense_layer_sizes[i]))
        cnn_lstm_model.add(tf.keras.layers.Dropout(params.dropout))

    cnn_lstm_model.add(
        tf.keras.layers.Dense(params.label_width * num_features, kernel_initializer=tf.initializers.zeros())
    )
    # Shape => [batch, out_steps, features] -> for each prediction step one neuron
    cnn_lstm_model.add(tf.keras.layers.Reshape([params.label_width, num_features]))
    return cnn_lstm_model
