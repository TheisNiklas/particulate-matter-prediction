import sys

sys.path.append("../../")

import json
import os
from typing import Any, Dict, List, Union

import pandas as pd

from weatherdata.weather_data import HourlyData, ModelBasedOptions, WeatherData  # pylint: disable=import-error


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

        station_meta_data = StationDataframeGenerator.get_station_meta_data(station_id)

        latitude = float(station_meta_data["latitude"])
        longitude = float(station_meta_data["longitude"])

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

    @staticmethod
    def get_station_meta_data(station_id: int) -> Union[Dict[str, Any], None]:
        meta_data = json.load(open("../../../data/pollution/station_meta_data.json", encoding="utf-8"))
        station_meta_data = [data for data in meta_data if data["station_id"] == station_id]
        if len(station_meta_data) == 0:
            return None
        return station_meta_data[0]
