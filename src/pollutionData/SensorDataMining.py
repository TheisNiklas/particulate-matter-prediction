# Methode um alle Messdaten eines Sensors abzurufen und in einer CSV-Datei zu speichern.
import requests
import json
import csv
import time
import pandas as pd

def get_all_sensor_data(sensor_id, date_from, date_to, sleep):
  list_of_sensor_data = []
  api = 'https://api.gios.gov.pl/pjp-api/v1/rest/archivalData/getDataBySensor/{sensorID}?size=500&dateFrom={dateFrom}&dateTo={dateTo}'
  full_api = api.format(sensorID=sensor_id, dateFrom=date_from, dateTo=date_to)
  response = requests.get(full_api)
  while not response.ok:
    time.sleep(60)
    print("Ran in timeout")
    response = requests.get(full_api)
  
  resp = response.json()
  for item in resp["Lista archiwalnych wyników pomiarów"]:
    list_of_sensor_data.append({"stationName":item["Nazwa stacji"],"stationCode": item["Kod stanowiska"], "date": item["Data"], "value": item["Wartość"]})
  
  fileName = ("Sensordata_id_%d.csv" % (sensor_id))
  
  if list_of_sensor_data:
    keys = list_of_sensor_data[0].keys()
    with open(fileName, 'w') as output_file:
      dict_writer = csv.DictWriter(output_file, keys)
      dict_writer.writeheader()
      dict_writer.writerows(list_of_sensor_data)
  
    if resp["links"]["self"] == resp["links"]["last"]:
      return
    else:
      #To avoid Timeout
      time.sleep(sleep)
      get_all_sensor_data_with_link(resp["links"]["next"], fileName, keys, sleep)
  else:
    open(("Empty_" + fileName), 'a').close()
    return





def get_all_sensor_data_with_link(link_next, file_Name, keys, sleep):
  list_of_sensor_data = []
  response = requests.get(link_next)

  while not response.ok:
    time.sleep(60)
    print("Ran in timeout")
    response = requests.get(link_next)

  resp = response.json()

  for item in resp["Lista archiwalnych wyników pomiarów"]:
    list_of_sensor_data.append({"stationName":item["Nazwa stacji"],"stationCode": item["Kod stanowiska"], "date": item["Data"], "value": item["Wartość"]})

  with open(file_Name, 'a') as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writerows(list_of_sensor_data)

  if resp["links"]["self"] == resp["links"]["last"]:
    return
  else:
    #To avoid Timeout
    time.sleep(sleep)
    get_all_sensor_data_with_link(resp["links"]["next"], file_Name, keys, sleep)


def crawling(id_list, date_from, date_to, sleep):
  to = len(id_list)
  crawling2(id_list, date_from, date_to, 0, to, 31)

def crawling2(id_list, date_from, date_to, from_id, to_id, sleep):
  for id in id_list[from_id: to_id]:
    get_all_sensor_data(id, date_from, date_to, 31)
    time.sleep(sleep)


# df = pd.read_csv("allSensors.csv")
# listOfAllStationIDs = df["stationID"]
# crawling(listOfAllStationIDs, "2022-01-01 00:00", "2022-01-31 23:59", 31)