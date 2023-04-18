# TODO: StationIDS auslesen und für die nächste Abfrage vorbereiten

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
    stationIDs.append(station["Identyfikator stacji"])

dict = {"StationID": stationIDs}

df = pd.DataFrame(dict)
df.to_csv("stationID.csv")
