import time
import requests
import pandas as pd

df = pd.read_csv("allSensors.csv")
listOfAllStationIDs = df["stationID"]
listofAllSensorIDs = df["sensorID"]
listOfAllSensorTypes = df["sensorType"]

dateFrom = "2022-01-01 00:00"
dateTo = "2022-01-31 23:59"
size = 500

api = "https://api.gios.gov.pl/pjp-api/v1/rest/archivalData/getDataBySensor/{sensorID}?size={size}&dateFrom={dateFrom}&dateTo={dateTo}"
listOfAllData = []

try:
    for sensor in listofAllSensorIDs:
        time.sleep(30)
        print(sensor)
        response = requests.get(api.format(sensorID=sensor, size=size, dateFrom=dateFrom, dateTo=dateTo), timeout=5)
        response_json = response.json()

        # TODO: Ergebnisse der Json speichern und next-link für nächste Abfrage nutzen
except requests.exceptions.Timeout:
    print("The request timed out")
except requests.exceptions.RequestException as e:
    print("An error occurred: ", e)