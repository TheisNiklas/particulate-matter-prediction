# Generate a list of all sensor and write it to file

import csv

import pandas as pd
import requests

df = pd.read_csv("../../data/pollution/stationID.csv")
stationIDs = df["StationID"]

listOfAllSensors = []

for entry in stationIDs:
    response = requests.get("https://api.gios.gov.pl/pjp-api/v1/rest/station/sensors/{}".format(entry), timeout=5)
    response_json = response.json()
    for key in response_json["Lista stanowisk pomiarowych dla podanej stacji"]:
        sensorID = key["Identyfikator stanowiska"]
        sensorType = key["Wskaźnik"]

        if sensorType == "pył zawieszony PM10" or sensorType == "pył zawieszony PM2.5":
            listOfAllSensors.append({"stationID": entry, "sensorID": sensorID, "sensorType": sensorType})

keys = listOfAllSensors[0].keys()
with open("../../data/pollution/allSensors.csv", "w") as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(listOfAllSensors)
