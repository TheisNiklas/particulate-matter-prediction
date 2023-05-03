import sys

sys.path.append("../../")

import os
from typing import List, Union

import pandas as pd

from weatherdata.weather_data import HourlyData, ModelBasedOptions, WeatherData


class StationDataframeGenerator:
    @staticmethod
    def generate_station_dataframe(station_id: int, year_range: List[int]) -> pd.DataFrame:
        df = None
        for year in year_range:
            current_filename = StationDataframeGenerator.get_file(station_id, year)
            if current_filename is not None:
                data_file = pd.read_csv(current_filename)
                data_file = data_file.rename(columns={"date": "timestamp", "value": "pm10"})
                if df is None:
                    df = data_file
                else:
                    df = pd.concat([df, data_file])

        df.reset_index(inplace=True, drop=True)

        # TODO: get station meta data

        latitude = 50.726338
        longitude = 16.647286

        options = ModelBasedOptions(
            hourly=[
                HourlyData.Temperature_2m,
                HourlyData.RelativeHumidity_2m,
                HourlyData.WindDirection_10m,
                HourlyData.WindSpeed_10m,
                HourlyData.Precipitation_rain_showers_snow,
            ]
        )
        _, _, weather = WeatherData.getModelBasedData(
            latitude, longitude, df["timestamp"].loc[0], df["timestamp"].iloc[-1], options
        )

        weather = weather.iloc[1:-23]

        df["timestamp"] = pd.to_datetime(df["timestamp"], format="%Y-%m-%d %H:%M:%S")
        df.set_index("timestamp", inplace=True)

        print(type(df.index[0]))

        print(type(weather.index[0]))

        temp = weather.join(df)

        return temp

    @staticmethod
    def get_file(station_id: int, year: int) -> Union[str, None]:
        data_files = os.listdir(f"../../../data/pollution/raw/{year}/pm10")
        file = [filename for filename in data_files if filename == (f"{year}_{station_id}.csv")]
        if len(file) == 0:
            return None
        full_path = os.path.join("../../../data/pollution/raw/", str(year), "pm10", file[0])
        return full_path
