import pandas as pd


class StationDataframeProcessor:
    """
    Process a dataframe with a datetime index and at least the column `pm10` and interpolates the `pm10` column.
    Values in the `pm10` column are set to `NaN` if they are <= 0.
    All gaps containing `NaN` values with a max length of 5 hours are interpolated.
    The remaining rows with NaN values are dropped.
    """
    max_gap_size: pd.Timedelta

    def __init__(self, max_gap_size=5):
        self.max_gap_size = pd.Timedelta(hours=max_gap_size)

    def process_station_dataframe(self, dataframe: pd.DataFrame):
        dataframe = dataframe.mask(dataframe["pm10"] <= 0)
        return self.__interpolateDataframe(dataframe)

    def __interpolateDataframe(self, dataframe: pd.DataFrame):
        nan_indices = dataframe[dataframe["pm10"].isnull()].index

        gap_start_indices = []
        current_gap_start = None
        last_index = None

        for index in nan_indices:
            if current_gap_start is None:
                current_gap_start = index
                last_index = index
            elif index - last_index > pd.Timedelta(hours=1):
                if last_index - current_gap_start < self.max_gap_size:
                    gap_start_indices.append([current_gap_start, last_index])
                    current_gap_start = index
                else:
                    current_gap_start = index

            last_index = index

        for start_index, end_index in gap_start_indices:
            length = end_index - start_index
            if length < pd.Timedelta(hours=2):
                length = pd.Timedelta(hours=2)
            real_start = start_index - length
            real_end = end_index + length
            dataframe.loc[real_start:real_end, "pm10"] = dataframe.loc[real_start:real_end, "pm10"].interpolate(
                method="time"
            )

        return dataframe.dropna()
