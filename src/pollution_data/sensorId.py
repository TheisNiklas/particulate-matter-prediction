# Get a list of all stations and write it to file

import csv

import requests

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
with open("../../data/pollution/stationID.csv", "w") as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(stationIDs)


