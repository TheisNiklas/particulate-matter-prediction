# Methode um alle Messdaten eines Sensors abzurufen und in einer CSV-Datei zu speichern.
import csv
import os
import time
from typing import Any, Dict, List

import pandas as pd
import requests


def get_all_sensor_data(sensor: pd.Series, date_from: str, date_to: str):
    api = "https://api.gios.gov.pl/pjp-api/v1/rest/archivalData/getDataBySensor/{sensorId}?size=500&dateFrom={dateFrom}&dateTo={dateTo}"

    station_id = sensor["stationID"]
    sensor_id = sensor["sensorID"]

    print(f"Station {station_id}: Starting sensor {sensor_id}")
    url = api.format(sensorId=sensor_id, dateFrom=date_from, dateTo=date_to)

    fileName = f"data/pollution/2022_{station_id}_{sensor_id}.csv"

    get_all_sensor_data_with_link(url, fileName)


def get_all_sensor_data_with_link(link_next: str, file_name: str):
    list_of_sensor_data: List[Dict[str, Any]] = []
    try:
        response = requests.get(link_next, timeout=60)
    except Exception as e:
        pass

    while not response.ok:
        if response.status_code == 500:
            return
        time.sleep(60)
        print("Ran into timeout")
        response = requests.get(link_next, timeout=60)

    response_json = response.json()

    for item in response_json["Lista archiwalnych wyników pomiarów"]:
        list_of_sensor_data.append(
            {
                "date": item["Data"],
                "value": item["Wartość"],
            }
        )

    if len(list_of_sensor_data) > 0:
        keys = list_of_sensor_data[0].keys()
        with open(file_name, "a", encoding="utf-8", newline="") as output_file:
            dict_writer = csv.DictWriter(output_file, keys)
            if os.stat(file_name).st_size == 0:
                dict_writer.writeheader()
            dict_writer.writerows(list_of_sensor_data)

    if response_json["links"]["self"] == response_json["links"]["last"] or response_json["totalPages"] == 0:
        return
    else:
        time.sleep(31)
        get_all_sensor_data_with_link(response_json["links"]["next"], file_name)


def crawling(station_df: pd.DataFrame, date_from, date_to):
    for _, sensor in station_df.iterrows():
        get_all_sensor_data(sensor, date_from, date_to)


df = pd.read_csv("allSensors.csv")
crawling(df, "2022-01-01 00:00", "2022-12-31 23:59")
