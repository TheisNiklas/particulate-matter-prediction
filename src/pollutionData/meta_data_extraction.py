import json
import os
from datetime import datetime, timedelta
from typing import List, Tuple

import pandas as pd

# FIX: Path build with os.path.join


class MetaDataExtraction:
    data_path: str

    def __init__(self, data_path: str = "../../data/pollution/"):
        self.data_path = data_path

    def extractMetaData(self, has_sensor: bool = True):
        files = os.listdir(self.data_path)
        files_csv = [file for file in files if os.path.splitext(file)[1] == ".csv"]

        station_data = pd.read_csv("stationID.csv")

        meta_data = []
        for file in files_csv:
            station_id, sensor_id = self.__extractIds(file, has_sensor)
            station_data_row = station_data.loc[station_data["stationID"] == station_id]
            latitude = station_data_row["latitude"].values[0]
            longitude = station_data_row["longitude"].values[0]
            df = pd.read_csv(self.data_path + file)
            valid_ranges, missing_ranges = self.__extractRanges(pd.to_datetime(df["date"], format="%Y-%m-%d %H:%M:%S"))
            max = df["value"].max()
            min = df["value"].min()
            meta_data.append(
                {
                    "station_id": station_id,
                    "sensor_id": sensor_id,
                    "filename": file,
                    "valid_ranges": valid_ranges,
                    "missing_ranges": missing_ranges,
                    "latitide": latitude,
                    "longitude": longitude,
                    "max": max,
                    "min": min,
                }
            )

        with open(self.data_path + "meta_data.json", "w", encoding="utf-8") as json_file:
            json_file.write(json.dumps(meta_data, indent=4, default=str))

    def __extractIds(self, file_name: str, has_sensor: bool = True) -> Tuple[int, int]:
        name, _ = os.path.splitext(file_name)
        name_parts = name.split("_")
        station_id = int(name_parts[1])
        sensor_id = None
        if has_sensor:
            sensor_id = int(name_parts[2])
        return (station_id, sensor_id)

    def __extractRanges(
        self, date_series: pd.Series
    ) -> Tuple[List[Tuple[datetime, datetime, timedelta]], List[Tuple[datetime, datetime, timedelta]]]:
        ranges: List[Tuple[datetime, datetime]] = []
        missing_ranges: List[Tuple[datetime, datetime]] = []
        current_start = date_series.iloc[0]
        last_date: datetime = current_start
        for date in date_series.iloc[1 : len(date_series)]:
            if date - last_date > timedelta(0, 3600):
                ranges.append((current_start, last_date, last_date - current_start))
                current_start = date
                missing_start = last_date + timedelta(hours=1)
                missing_end = date - timedelta(hours=1)
                missing_ranges.append((missing_start, missing_end, missing_end - missing_start))
            last_date = date
        ranges.append((current_start, last_date, last_date - current_start))
        return (ranges, missing_ranges)


MetaDataExtraction("data/pollution/raw/2021/pm25/").extractMetaData(False)
