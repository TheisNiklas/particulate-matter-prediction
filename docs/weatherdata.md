# Table of Contents

* [weather\_data](#weather_data)
  * [DailyData](#weather_data.DailyData)
  * [HourlyData](#weather_data.HourlyData)
  * [Timezones](#weather_data.Timezones)
  * [ModelBasedOptions](#weather_data.ModelBasedOptions)
  * [WeatherData](#weather_data.WeatherData)

<a id="weather_data"></a>

# weather\_data

<a id="weather_data.DailyData"></a>

## DailyData

```python
class DailyData(Enum)
```

Enum containing all possible different daily informations.

<a id="weather_data.DailyData.Weathercode"></a>

### Weathercode

Code specifying the general weather, like rainy, sunny etc.

<a id="weather_data.HourlyData"></a>

## HourlyData

```python
class HourlyData(Enum)
```

Enum containing all possible different hourly informations.

<a id="weather_data.Timezones"></a>

## Timezones

```python
class Timezones(Enum)
```

Timezones as accepted by the model based API.

<a id="weather_data.ModelBasedOptions"></a>

## ModelBasedOptions

```python
class ModelBasedOptions()
```

<a id="weather_data.ModelBasedOptions.__init__"></a>

### \_\_init\_\_

```python
def __init__(hourly: List[HourlyData] = None,
             daily: List[DailyData] = None,
             timezone: Timezones = Timezones.Europe_Berlin,
             temperature_unit: TemperatureUnits = TemperatureUnits.Celsius,
             wind_speed_unit: WindSpeedUnits = WindSpeedUnits.Km_h,
             rain_unit: RainUnits = RainUnits.Millimeter)
```

Options for the model based weather data API

**Arguments**:

- `hourly` _List[HourlyData], optional_ - List of all the measurement values that should be in the returned DataFrame for hourly data
  If `None` no data is requested. Defaults to `None`.
- `daily` _List[DailyData], optional_ - List of all the measurement values that should be in the returned DataFrame for daily data.
  If `None` no data is requested. Defaults to `None`.
- `timezone` _Timezones, optional_ - Timezone based on which the data should be calculated. Only needed when daily data is requested.
  Defaults to `Timezones.Europe_Berlin`.
- `temperature_unit` _TemperatureUnits, optional_ - Unit for temperature. Defaults to `TemperatureUnits.Celsius`.
- `wind_speed_unit` _WindSpeedUnits, optional_ - Unit for wind speed. Defaults to `WindSpeedUnits.Km_h`.
- `rain_unit` _RainUnits, optional_ - Unit for rain amounts. Defaults to `RainUnits.Millimeter`.
  

**Example**:

```python
options = ModelBasedOptions(
    hourly=[
        HourlyData.Temperature_2m,
        HourlyData.RelativeHumidity_2m,
        HourlyData.WindDirection_10m,
        HourlyData.WindSpeed_10m,
    ]
)
```

<a id="weather_data.WeatherData"></a>

## WeatherData

```python
class WeatherData()
```

<a id="weather_data.WeatherData.getStationData"></a>

### getStationData

```python
@staticmethod
def getStationData(
    latitude: float,
    longitude: float,
    start_date: Union[datetime, str],
    end_date: Union[datetime, str],
    require_hourly: bool = True,
    require_daily: bool = False,
    max_distance_m: int = 50000
) -> Tuple[MetaDataModelBased, DataFrame, DataFrame]
```

Gets the weather data from the nearest weather station to the specified location, that satisfies the conditions.

**Arguments**:

- `latitude` _float_ - GPS coordinate latitude
- `longitude` _float_ - GPS coordinate longitude
- `start_date` _datetime | str_ - start date of the data range to be returned, datetime or iso formated date string
- `end_date` _datetime | str_ - end date of the data range to be returned, datetime or iso formated date string
- `require_hourly` _bool, optional_ - Whether the station has to have hourly data avaiable for the date range. Defaults to True.
- `require_daily` _bool, optional_ - Whether the station has to have daily data avaiable for the date range. Defaults to False.
- `max_distance_m` _int, optional_ - Maximum distance of the station to the coordinates in meters. Defaults to 50000.
  

**Raises**:

- `ValueError` - If no station is in radius or has data in date range, when `require_hourly` or `require_daily` is True.
  

**Returns**:

  Tuple[
- `meta_data` _MetaDataModelBased_ - informations about the weather station
- `daily` _DataFrame_ - DataFrame containing the requested daily data
- `hourly` _DataFrame_ - DataFrame containing the requested hourly data
  ]

<a id="weather_data.WeatherData.getModelBasedData"></a>

### getModelBasedData

```python
@staticmethod
def getModelBasedData(
    latitude: float, longitude: float, start_date: Union[datetime, str],
    end_date: Union[datetime, str], options: ModelBasedOptions
) -> Tuple[MetaDataModelBased, DataFrame, DataFrame]
```

Gets the weather data at the specified location. The data is based on a mathematically model and not measured directly.
The mathematical model uses waether station, aviation and other data to calculate the values.

**Arguments**:

- `latitude` _float_ - GPS coordinate latitude
- `longitude` _float_ - GPS coordinate longitude
- `start_date` _Union[datetime, str]_ - start date of the data range to be returned, datetime or iso formated date string
- `end_date` _Union[datetime, str]_ - end date of the data range to be returned, datetime or iso formated date string
- `options` _ModelBasedOptions_ - Options object specifying addtional information, see `ModelBasedOptions` documentation for more informations
  

**Returns**:

  Tuple[
- `meta_data` _MetaDataModelBased_ - informations about the weather station
- `daily` _DataFrame_ - DataFrame containing the requested daily data
- `hourly` _DataFrame_ - DataFrame containing the requested hourly data
  ]

