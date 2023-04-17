# Table of Contents

* [weather\_data](#weather_data)
  * [DailyData](#weather_data.DailyData)
  * [HourlyData](#weather_data.HourlyData)
  * [Timezones](#weather_data.Timezones)
  * [TemperatureUnits](#weather_data.TemperatureUnits)
  * [WindSpeedUnits](#weather_data.WindSpeedUnits)
  * [RainUnits](#weather_data.RainUnits)
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

#### Weathercode

Code specifying the general weather, like rainy, sunny etc.

<a id="weather_data.DailyData.MaximumTemperature_2m"></a>

#### MaximumTemperature\_2m



<a id="weather_data.DailyData.MinimumTemperature_2m"></a>

#### MinimumTemperature\_2m



<a id="weather_data.DailyData.MeanTemperature_2m"></a>

#### MeanTemperature\_2m



<a id="weather_data.DailyData.MaximumApparentTemperature_2m"></a>

#### MaximumApparentTemperature\_2m



<a id="weather_data.DailyData.MinimumApparentTemperature_2m"></a>

#### MinimumApparentTemperature\_2m



<a id="weather_data.DailyData.MeanApparentTemperature_2m"></a>

#### MeanApparentTemperature\_2m



<a id="weather_data.DailyData.Sunrise"></a>

#### Sunrise



<a id="weather_data.DailyData.Sunset"></a>

#### Sunset



<a id="weather_data.DailyData.ShortwaveRadiationSum"></a>

#### ShortwaveRadiationSum



<a id="weather_data.DailyData.PrecipitationSum"></a>

#### PrecipitationSum



<a id="weather_data.DailyData.RainSum"></a>

#### RainSum



<a id="weather_data.DailyData.SnowfallSum"></a>

#### SnowfallSum



<a id="weather_data.DailyData.PrecipitationHours"></a>

#### PrecipitationHours



<a id="weather_data.DailyData.MaximumWindSpeed_10m"></a>

#### MaximumWindSpeed\_10m



<a id="weather_data.DailyData.MaximumWindGusts_10m"></a>

#### MaximumWindGusts\_10m



<a id="weather_data.DailyData.DominantWindDirection_10m"></a>

#### DominantWindDirection\_10m



<a id="weather_data.DailyData.ReferenceEvapotranspiration_et0"></a>

#### ReferenceEvapotranspiration\_et0



<a id="weather_data.HourlyData"></a>

## HourlyData

```python
class HourlyData(Enum)
```

Enum containing all possible different hourly informations.

<a id="weather_data.HourlyData.Temperature_2m"></a>

#### Temperature\_2m



<a id="weather_data.HourlyData.RelativeHumidity_2m"></a>

#### RelativeHumidity\_2m



<a id="weather_data.HourlyData.Dewpoint_2m"></a>

#### Dewpoint\_2m



<a id="weather_data.HourlyData.ApparentTemperature"></a>

#### ApparentTemperature



<a id="weather_data.HourlyData.SealevelPressure"></a>

#### SealevelPressure



<a id="weather_data.HourlyData.SurfacePressure"></a>

#### SurfacePressure



<a id="weather_data.HourlyData.Precipitation_rain_showers_snow"></a>

#### Precipitation\_rain\_showers\_snow



<a id="weather_data.HourlyData.Rain_rain_showers"></a>

#### Rain\_rain\_showers



<a id="weather_data.HourlyData.Snowfall"></a>

#### Snowfall



<a id="weather_data.HourlyData.Weathercode"></a>

#### Weathercode



<a id="weather_data.HourlyData.Cloudcover_total"></a>

#### Cloudcover\_total



<a id="weather_data.HourlyData.Cloudcover_low"></a>

#### Cloudcover\_low



<a id="weather_data.HourlyData.Cloudcover_Mid"></a>

#### Cloudcover\_Mid



<a id="weather_data.HourlyData.Cloudcover_High"></a>

#### Cloudcover\_High



<a id="weather_data.HourlyData.ShortwaveSolarRadiation"></a>

#### ShortwaveSolarRadiation



<a id="weather_data.HourlyData.DirectSolarRadiation"></a>

#### DirectSolarRadiation



<a id="weather_data.HourlyData.DiffuseSolarRadiation"></a>

#### DiffuseSolarRadiation



<a id="weather_data.HourlyData.DirectNormalIrradiance"></a>

#### DirectNormalIrradiance



<a id="weather_data.HourlyData.WindSpeed_10m"></a>

#### WindSpeed\_10m



<a id="weather_data.HourlyData.WindSpeed_100m"></a>

#### WindSpeed\_100m



<a id="weather_data.HourlyData.WindDirection_10m"></a>

#### WindDirection\_10m



<a id="weather_data.HourlyData.WindDirection_100m"></a>

#### WindDirection\_100m



<a id="weather_data.HourlyData.WindGusts_10m"></a>

#### WindGusts\_10m



<a id="weather_data.HourlyData.ReferenceEvapotranspiration_et0"></a>

#### ReferenceEvapotranspiration\_et0



<a id="weather_data.HourlyData.VaporPressureDeficit"></a>

#### VaporPressureDeficit



<a id="weather_data.HourlyData.SoilTemperature_0_to_7cm"></a>

#### SoilTemperature\_0\_to\_7cm



<a id="weather_data.HourlyData.SoilTemperature_7_to_28cm"></a>

#### SoilTemperature\_7\_to\_28cm



<a id="weather_data.HourlyData.SoilTemperature_28_to_100cm"></a>

#### SoilTemperature\_28\_to\_100cm



<a id="weather_data.HourlyData.SoilTemperature_100_to_255cm"></a>

#### SoilTemperature\_100\_to\_255cm



<a id="weather_data.HourlyData.SoilMoisture_0_to_7cm"></a>

#### SoilMoisture\_0\_to\_7cm



<a id="weather_data.HourlyData.SoilMoisture_7_to_28cm"></a>

#### SoilMoisture\_7\_to\_28cm



<a id="weather_data.HourlyData.SoilMoisture_28_to_100cm"></a>

#### SoilMoisture\_28\_to\_100cm



<a id="weather_data.HourlyData.SoilMoisture_100_to_255cm"></a>

#### SoilMoisture\_100\_to\_255cm



<a id="weather_data.Timezones"></a>

## Timezones

```python
class Timezones(Enum)
```

Timezones as accepted by the model based API.

<a id="weather_data.Timezones.America_Anchorage"></a>

#### America\_Anchorage



<a id="weather_data.Timezones.America_Los_Angeles"></a>

#### America\_Los\_Angeles



<a id="weather_data.Timezones.America_Denver"></a>

#### America\_Denver



<a id="weather_data.Timezones.America_Chicago"></a>

#### America\_Chicago



<a id="weather_data.Timezones.America_New_York"></a>

#### America\_New\_York



<a id="weather_data.Timezones.America_Sao_Paulo"></a>

#### America\_Sao\_Paulo



<a id="weather_data.Timezones.Europe_London"></a>

#### Europe\_London



<a id="weather_data.Timezones.Europe_Berlin"></a>

#### Europe\_Berlin



<a id="weather_data.Timezones.Europe_Moscow"></a>

#### Europe\_Moscow



<a id="weather_data.Timezones.Africa_Cairo"></a>

#### Africa\_Cairo



<a id="weather_data.Timezones.Asia_Bangkok"></a>

#### Asia\_Bangkok



<a id="weather_data.Timezones.Asia_Singapore"></a>

#### Asia\_Singapore



<a id="weather_data.Timezones.Asia_Tokyo"></a>

#### Asia\_Tokyo



<a id="weather_data.Timezones.Australia_Sydney"></a>

#### Australia\_Sydney



<a id="weather_data.Timezones.Pacific_Auckland"></a>

#### Pacific\_Auckland



<a id="weather_data.TemperatureUnits"></a>

## TemperatureUnits

```python
class TemperatureUnits(Enum)
```

<a id="weather_data.TemperatureUnits.Celsius"></a>

#### Celsius



<a id="weather_data.TemperatureUnits.Fahrenheit"></a>

#### Fahrenheit



<a id="weather_data.WindSpeedUnits"></a>

## WindSpeedUnits

```python
class WindSpeedUnits(Enum)
```

<a id="weather_data.WindSpeedUnits.Km_h"></a>

#### Km\_h



<a id="weather_data.WindSpeedUnits.M_s"></a>

#### M\_s



<a id="weather_data.WindSpeedUnits.Mph"></a>

#### Mph



<a id="weather_data.WindSpeedUnits.Knots"></a>

#### Knots



<a id="weather_data.RainUnits"></a>

## RainUnits

```python
class RainUnits(Enum)
```

<a id="weather_data.RainUnits.Millimeter"></a>

#### Millimeter



<a id="weather_data.RainUnits.Inch"></a>

#### Inch



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

