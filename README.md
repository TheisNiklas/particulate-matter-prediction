# Feinstaubprojekt Polen

## Description

This project has the target to create a prediction of pm10 pollution values.
The data used in this project comes from the [Polish Environmental Agency](https://powietrze.gios.gov.pl/pjp/home) for pollution data and from [Open-Meteo](https://open-meteo.com/) for weather data.
The data is visually analysed and processed to handle missing and invalid values.
With the processed data machine learning models are trained to predict future pm10 values based on a feature vector containing weather data, time representaions and pm10 values.

## Getting started

### Setting up python

Install the required python dependencies. \
Optinally use a virtual python environment for the project.

```ps
python -m venv .env
.env/Scripts/activate
pip install -r requirements.txt
```

### Getting the data

For loading the data the tool [dvc](https://dvc.org/) is required. \
After installation of the tool, the data can be loaded with the following command.

```ps
dvc pull
```

The data is then loaded into the folder `data`.
