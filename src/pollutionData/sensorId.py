# TODO: StationIDS auslesen und für die nächste Abfrage vorbereiten
import csv
import requests
import pandas as pd

# API request
response = requests.get("https://api.gios.gov.pl/pjp-api/v1/rest/station/findAll?size=500")
response_json = response.json()

listOfAllStations = []
for key in response_json["Lista stacji pomiarowych"]:
    listOfAllStations.append(key)

stationIDs = []
for station in listOfAllStations:
    stationID = station["Identyfikator stacji"]
    latitude = station["WGS84 φ N"]
    longitude = station["WGS84 λ E"]
    stationIDs.append({"stationID": stationID, "latitude": latitude, "longitude": longitude})


keys = stationIDs[0].keys()
with open("stationID.csv", "w") as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(stationIDs)


