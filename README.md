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

### Viewing training results

The training process for all models was tracker using [neptuni.ai](https://neptune.ai).

The results from the initial model structure tests can be found [here](https://app.neptune.ai/o/data-mining-team2/org/initial-model-tests/runs/details?viewId=995d31f5-b639-4eed-98b9-721d3f6af50f).

All further tests can be found [here](https://app.neptune.ai/o/data-mining-team2/org/model-tests/runs/table?viewId=995f0563-1e7a-4513-b399-85c5addd3334).

Additional to the recorded loss and metrics from training and validation, for every model additional information was saved. These can be found in the run details in the tab "All metadata":

- `parameters`: Selected parameters used for training
- `eval`: Test metrics every 50 epochs
- `model_names`: Names the models were saved with every 50 epochs
