import datetime as dt
import math

import calplot
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

df = pd.read_csv("/home/sarah/feinstaubprojekt-polen/data/pollution/raw/2022/2022_16_101.csv")

d = {"value": "sum"}

# JANUAR
januar = df[(df["date"] >= "2022-01-01 00:00:00") & (df["date"] <= "2022-01-31 23:00:00")]
januar = januar.reset_index()
result_januar = januar.groupby(januar.index // 24).agg(d)
result_januar = (result_januar["value"] / 24).round(5)

np_januar = result_januar.to_numpy()
result_januar = pd.DataFrame(np_januar, columns=["value"], index=pd.date_range("2022-01-01", periods=31))

# FEBRUAR
februar = df[(df["date"] >= "2022-02-01 00:00:00") & (df["date"] <= "2022-02-28 23:00:00")]
februar = februar.reset_index()
result_februar = februar.groupby(februar.index // 24).agg(d)
result_februar = (result_februar["value"] / 24).round(5)

np_februar = result_februar.to_numpy()
result_februar = pd.DataFrame(np_februar, columns=["value"], index=pd.date_range("2022-02-01", periods=28))


# MÄRZ
maerz = df[(df["date"] >= "2022-03-01 00:00:00") & (df["date"] <= "2022-03-31 23:00:00")]
maerz = maerz.reset_index()
result_maerz = maerz.groupby(maerz.index // 24).agg(d)
result_maerz = (result_maerz["value"] / 24).round(5)

np_maerz = result_maerz.to_numpy()
result_maerz = pd.DataFrame(np_maerz, columns=["value"], index=pd.date_range("2022-03-01", periods=31))

# APRIL
april = df[(df["date"] >= "2022-04-01 00:00:00") & (df["date"] <= "2022-04-30 23:00:00")]
april = april.reset_index()
result_april = april.groupby(april.index // 24).agg(d)
result_april = (result_april["value"] / 24).round(5)

np_april = result_april.to_numpy()
result_april = pd.DataFrame(np_april, columns=["value"], index=pd.date_range("2022-04-01", periods=30))

# MAI
mai = df[(df["date"] >= "2022-05-01 00:00:00") & (df["date"] <= "2022-05-31 23:00:00")]
mai = mai.reset_index()
result_mai = mai.groupby(mai.index // 24).agg(d)
result_mai = (result_mai["value"] / 24).round(5)

np_mai = result_mai.to_numpy()
result_mai = pd.DataFrame(np_mai, columns=["value"], index=pd.date_range("2022-05-01", periods=31))

# JUNI
juni = df[(df["date"] >= "2022-06-01 00:00:00") & (df["date"] <= "2022-06-30 23:00:00")]
juni = juni.reset_index()
result_juni = juni.groupby(juni.index // 24).agg(d)
result_juni = (result_juni["value"] / 24).round(5)

np_juni = result_juni.to_numpy()
result_juni = pd.DataFrame(np_juni, columns=["value"], index=pd.date_range("2022-06-01", periods=30))

# JULI
juli = df[(df["date"] >= "2022-07-01 00:00:00") & (df["date"] <= "2022-07-31 23:00:00")]
juli = juli.reset_index()
result_juli = juli.groupby(juli.index // 24).agg(d)
result_juli = (result_juli["value"] / 24).round(5)

np_juli = result_juli.to_numpy()
result_juli = pd.DataFrame(np_juli, columns=["value"], index=pd.date_range("2022-07-01", periods=31))

# AUGUST
august = df[(df["date"] >= "2022-08-01 00:00:00") & (df["date"] <= "2022-08-31 23:00:00")]
august = august.reset_index()
result_august = august.groupby(august.index // 24).agg(d)
result_august = (result_august["value"] / 24).round(5)

np_august = result_august.to_numpy()
result_august = pd.DataFrame(np_august, columns=["value"], index=pd.date_range("2022-08-01", periods=31))

# SEPTEMBER
september = df[(df["date"] >= "2022-09-01 00:00:00") & (df["date"] <= "2022-09-30 23:00:00")]
september = september.reset_index()
result_september = september.groupby(september.index // 24).agg(d)
result_september = (result_september["value"] / 24).round(5)

np_september = result_september.to_numpy()
result_september = pd.DataFrame(np_september, columns=["value"], index=pd.date_range("2022-09-01", periods=30))

# OKTOBER
oktober = df[(df["date"] >= "2022-10-01 00:00:00") & (df["date"] <= "2022-10-31 23:00:00")]
oktober = oktober.reset_index()
result_oktober = oktober.groupby(oktober.index // 24).agg(d)
result_oktober = (result_oktober["value"] / 24).round(5)

np_oktober = result_oktober.to_numpy()
result_oktober = pd.DataFrame(np_oktober, columns=["value"], index=pd.date_range("2022-10-01", periods=31))

# NOVEMBER
november = df[(df["date"] >= "2022-11-01 00:00:00") & (df["date"] <= "2022-11-30 23:00:00")]
november = november.reset_index()
result_november = november.groupby(november.index // 24).agg(d)
result_november = (result_november["value"] / 24).round(5)

np_november = result_november.to_numpy()
result_november = pd.DataFrame(np_november, columns=["value"], index=pd.date_range("2022-11-01", periods=30))

# DEZEMBER
dezember = df[(df["date"] >= "2022-12-01 00:00:00") & (df["date"] <= "2022-12-31 23:00:00")]
dezember = dezember.reset_index()
result_dezember = dezember.groupby(dezember.index // 24).agg(d)
result_dezember = (result_dezember["value"] / 24).round(5)

np_dezember = result_dezember.to_numpy()
result_dezember = pd.DataFrame(np_dezember, columns=["value"], index=pd.date_range("2022-12-01", periods=31))

result = [
    result_januar,
    result_februar,
    result_maerz,
    result_april,
    result_mai,
    result_juni,
    result_juli,
    result_august,
    result_september,
    result_oktober,
    result_november,
    result_dezember,
]

result = pd.concat(result)

result.to_csv("result.csv", sep="\t")
result = result.to_numpy().ravel()

dates = pd.date_range("1/1/2022", periods=365, freq="D")

events = pd.Series(result, index=dates)

calplot.calplot(events)
