from __future__ import annotations

from datetime import datetime
from enum import Enum
from typing import Any, Dict, List, Tuple, Union
from urllib.parse import urlencode

import meteostat
import requests
from pandas import DataFrame, Series, to_datetime


class DailyData(Enum):
    """
    Enum containing all possible different daily informations.
    """

    Weathercode = "weathercode"
    """Code specifying the general weather, like rainy, sunny etc."""
    MaximumTemperature_2m = "temperature_2m_max"
    MinimumTemperature_2m = "temperature_2m_min"
    MeanTemperature_2m = "temperature_2m_mean"
    MaximumApparentTemperature_2m = "apparent_temperature_max"
    MinimumApparentTemperature_2m = "apparent_temperature_min"
    MeanApparentTemperature_2m = "apparent_temperature_mean"
    Sunrise = "sunrise"
    Sunset = "sunset"
    ShortwaveRadiationSum = "shortwave_radiation_sum"
    PrecipitationSum = "precipitation_sum"
    RainSum = "rain_sum"
    SnowfallSum = "snowfall_sum"
    PrecipitationHours = "precipitation_hours"
    MaximumWindSpeed_10m = "windspeed_10m_max"
    MaximumWindGusts_10m = "windgusts_10m_max"
    DominantWindDirection_10m = "winddirection_10m_dominant"
    ReferenceEvapotranspiration_et0 = "et0_fao_evapotranspiration"


class HourlyData(Enum):
    """
    Enum containing all possible different hourly informations.
    """

    Temperature_2m = "temperature_2m"
    RelativeHumidity_2m = "relativehumidity_2m"
    Dewpoint_2m = "dewpoint_2m"
    ApparentTemperature = "apparent_temperature"
    SealevelPressure = "pressure_msl"
    SurfacePressure = "surface_pressure"
    Precipitation_rain_showers_snow = "precipitation"
    Rain_rain_showers = "rain"
    Snowfall = "snowfall"
    Weathercode = "weathercode"
    Cloudcover_total = "cloudcover"
    Cloudcover_low = "cloudcover_low"
    Cloudcover_Mid = "cloudcover_mid"
    Cloudcover_High = "cloudcover_high"
    ShortwaveSolarRadiation = "shortwave_radiation"
    DirectSolarRadiation = "direct_radiation"
    DiffuseSolarRadiation = "diffuse_radiation"
    DirectNormalIrradiance = "direct_normal_irradiance"
    WindSpeed_10m = "windspeed_10m"
    WindSpeed_100m = "windspeed_100m"
    WindDirection_10m = "winddirection_10m"
    WindDirection_100m = "winddirection_100m"
    WindGusts_10m = "windgusts_10m"
    ReferenceEvapotranspiration_et0 = "et0_fao_evapotranspiration"
    VaporPressureDeficit = "vapor_pressure_deficit"
    SoilTemperature_0_to_7cm = "soil_temperature_0_to_7cm"
    SoilTemperature_7_to_28cm = "soil_temperature_7_to_28cm"
    SoilTemperature_28_to_100cm = "soil_temperature_28_to_100cm"
    SoilTemperature_100_to_255cm = "soil_temperature_100_to_255cm"
    SoilMoisture_0_to_7cm = "soil_moisture_0_to_7cm"
    SoilMoisture_7_to_28cm = "soil_moisture_7_to_28cm"
    SoilMoisture_28_to_100cm = "soil_moisture_28_to_100cm"
    SoilMoisture_100_to_255cm = "soil_moisture_100_to_255cm"


class Timezones(Enum):
    """Timezones as accepted by the model based API."""

    America_Anchorage = "America/Anchorage"
    America_Los_Angeles = "America/Los_Angeles"
    America_Denver = "America/Denver"
    America_Chicago = "America/Chicago"
    America_New_York = "America/New_York"
    America_Sao_Paulo = "America/Sao_Paulo"
    Europe_London = "Europe/London"
    Europe_Berlin = "Europe/Berlin"
    Europe_Moscow = "Europe/Moscow"
    Africa_Cairo = "Africa/Cairo"
    Asia_Bangkok = "Asia/Bangkok"
    Asia_Singapore = "Asia/Singapore"
    Asia_Tokyo = "Asia/Tokyo"
    Australia_Sydney = "Australia/Sydney"
    Pacific_Auckland = "Pacific/Auckland"


class TemperatureUnits(Enum):
    Celsius = None
    Fahrenheit = "fahrenheit"


class WindSpeedUnits(Enum):
    Km_h = None
    M_s = "ms"
    Mph = "mph"
    Knots = "kn"


class RainUnits(Enum):
    Millimeter = None
    Inch = "inch"


class ModelBasedOptions:
    hourly: List[HourlyData]
    daily: List[DailyData]
    timezone: Timezones
    temperature_unit: TemperatureUnits
    wind_speed_unit: WindSpeedUnits
    rain_unit: RainUnits

    def __init__(
        self,
        hourly: List[HourlyData] = None,
        daily: List[DailyData] = None,
        timezone: Timezones = Timezones.Europe_Berlin,
        temperature_unit: TemperatureUnits = TemperatureUnits.Celsius,
        wind_speed_unit: WindSpeedUnits = WindSpeedUnits.Km_h,
        rain_unit: RainUnits = RainUnits.Millimeter,
    ):
        """Options for the model based weather data API

        Args:
            hourly (List[HourlyData], optional): List of all the measurement values that should be in the returned DataFrame for hourly data
                If `None` no data is requested. Defaults to `None`.
            daily (List[DailyData], optional): List of all the measurement values that should be in the returned DataFrame for daily data.
                If `None` no data is requested. Defaults to `None`.
            timezone (Timezones, optional): Timezone based on which the data should be calculated. Only needed when daily data is requested.
                Defaults to `Timezones.Europe_Berlin`.
            temperature_unit (TemperatureUnits, optional): Unit for temperature. Defaults to `TemperatureUnits.Celsius`.
            wind_speed_unit (WindSpeedUnits, optional): Unit for wind speed. Defaults to `WindSpeedUnits.Km_h`.
            rain_unit (RainUnits, optional): Unit for rain amounts. Defaults to `RainUnits.Millimeter`.

        Example:
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
        """
        if hourly is None:
            hourly = []
        if daily is None:
            daily = []
        self.daily = daily
        self.hourly = hourly
        self.timezone = timezone
        self.temperature_unit = temperature_unit
        self.wind_speed_unit = wind_speed_unit
        self.rain_unit = rain_unit


class MetaDataModelBased:
    latitude: float
    longitude: float
    elevation: float
    generationtime_ms: float
    utc_offset_seconds: int
    timezone: str
    timezone_abbreviation: str
    hourly_units: Dict[str, str]
    daily_units: Dict[str, str]

    @classmethod
    def from_dict(cls, meta_data_dict: Dict[str, Any]) -> MetaDataModelBased:
        obj = cls()
        obj.latitude = meta_data_dict["latitude"]
        obj.longitude = meta_data_dict["longitude"]
        obj.elevation = meta_data_dict["elevation"]
        obj.generationtime_ms = meta_data_dict["generationtime_ms"]
        obj.utc_offset_seconds = meta_data_dict["utc_offset_seconds"]
        obj.timezone = meta_data_dict["timezone"]
        obj.timezone_abbreviation = meta_data_dict["timezone_abbreviation"]
        try:
            obj.hourly_units = meta_data_dict["hourly_units"]
        except Exception:  # pylint: disable=broad-except
            pass
        try:
            obj.daily_units = meta_data_dict["daily_units"]
        except Exception:  # pylint: disable=broad-except
            pass
        return obj


class MetaDataStation:
    name: str
    country: str
    region: str
    wmo_id: str
    icao_id: str
    latitude: float
    longitude: float
    elevation: float
    timezone: str
    hourly_start: datetime
    hourly_end: datetime
    daily_start: datetime
    daily_end: datetime
    monthly_start: datetime
    monthly_end: datetime
    distance: float

    @classmethod
    def from_series(cls, station: Series) -> MetaDataStation:
        obj = cls()
        obj.name = station["name"]
        obj.country = station["country"]
        obj.region = station["region"]
        obj.wmo_id = station["wmo"]
        obj.icao_id = station["icao"]
        obj.latitude = station["latitude"]
        obj.longitude = station["longitude"]
        obj.elevation = station["elevation"]
        obj.timezone = station["timezone"]
        obj.hourly_start = station["hourly_start"]
        obj.hourly_end = station["hourly_end"]
        obj.daily_start = station["daily_start"]
        obj.daily_end = station["daily_end"]
        obj.monthly_start = station["monthly_start"]
        obj.monthly_end = station["monthly_end"]
        obj.distance = station["distance"]
        return obj


class WeatherData:
    __baseUrl: str = "https://archive-api.open-meteo.com/v1/archive?"

    __stationColumnTranslation = {
        "temp": "temperature_C",
        "tavg": "average_temperature_C",
        "tmin": "minimal_temperature_C",
        "tmax": "maximal_temperature_C",
        "dwpt": "dew_point_C",
        "rhum": "relative_humidity_precent",
        "prcp": "percipation_mm",
        "snow": "snow_depth_mm",
        "wdir": "wind_direction_degree",
        "wspd": "wind_speed_kmh",
        "wpgt": "wind_gust_kmh",
        "pres": "sea_level_pressure_hpa",
        "tsun": "total_sunshine_minutes",
        "coco": "weather_condition_code",
    }

    @staticmethod
    def getStationData(
        latitude: float,
        longitude: float,
        start_date: Union[datetime, str],
        end_date: Union[datetime, str],
        require_hourly: bool = True,
        require_daily: bool = False,
        max_distance_m: int = 50000,
    ) -> Tuple[MetaDataModelBased, DataFrame, DataFrame]:
        """
        Gets the weather data from the nearest weather station to the specified location, that satisfies the conditions.

        Args:
            latitude (float): GPS coordinate latitude
            longitude (float): GPS coordinate longitude
            start_date (datetime | str): start date of the data range to be returned, datetime or iso formated date string
            end_date (datetime | str): end date of the data range to be returned, datetime or iso formated date string
            require_hourly (bool, optional): Whether the station has to have hourly data avaiable for the date range. Defaults to True.
            require_daily (bool, optional): Whether the station has to have daily data avaiable for the date range. Defaults to False.
            max_distance_m (int, optional): Maximum distance of the station to the coordinates in meters. Defaults to 50000.

        Raises:
            ValueError: If no station is in radius or has data in date range, when `require_hourly` or `require_daily` is True.

        Returns:
            Tuple[
                meta_data (MetaDataModelBased): informations about the weather station
                daily (DataFrame): DataFrame containing the requested daily data
                hourly (DataFrame): DataFrame containing the requested hourly data
            ]
        """

        if isinstance(start_date, str):
            start_date = datetime.fromisoformat(start_date)
        if isinstance(end_date, str):
            end_date = datetime.fromisoformat(end_date)

        stations_nearby = meteostat.Stations().nearby(lon=longitude, lat=latitude, radius=max_distance_m)
        if stations_nearby.count() == 0:
            raise ValueError(f"No stations in radius of {max_distance_m}m around location")
        stations_nearby_df = stations_nearby.fetch()
        current_station_index = 0
        while True:
            current_station = stations_nearby_df.iloc[current_station_index]
            if WeatherData.__validateStation(current_station, start_date, end_date, require_hourly, require_daily):
                break
            current_station_index += 1
            if current_station_index == stations_nearby_df.count():
                raise ValueError("No station has data in the specified date range")

        distance = current_station["distance"]
        station_id = current_station["wmo"]
        hourly_df = meteostat.Hourly(station_id, start_date, end_date).fetch()
        hourly_columns = [WeatherData.__stationColumnTranslation[column] for column in hourly_df.columns]
        hourly_df.columns = hourly_columns
        daily_df = meteostat.Daily(station_id, start_date, end_date).fetch()
        daily_columns = [WeatherData.__stationColumnTranslation[column] for column in daily_df.columns]
        daily_df.columns = daily_columns

        return (distance, daily_df, hourly_df)

    @staticmethod
    def getModelBasedData(
        latitude: float,
        longitude: float,
        start_date: Union[datetime, str],
        end_date: Union[datetime, str],
        options: ModelBasedOptions,
    ) -> Tuple[MetaDataModelBased, DataFrame, DataFrame]:
        """
        Gets the weather data at the specified location. The data is based on a mathematically model and not measured directly.
        The mathematical model uses waether station, aviation and other data to calculate the values.

        Args:
            latitude (float): GPS coordinate latitude
            longitude (float): GPS coordinate longitude
            start_date (Union[datetime, str]): start date of the data range to be returned, datetime or iso formated date string
            end_date (Union[datetime, str]): end date of the data range to be returned, datetime or iso formated date string
            options (ModelBasedOptions): Options object specifying addtional information, see `ModelBasedOptions` documentation for more informations

        Returns:
            Tuple[
                meta_data (MetaDataModelBased): informations about the weather station
                daily (DataFrame): DataFrame containing the requested daily data
                hourly (DataFrame): DataFrame containing the requested hourly data
            ]
        """
        if isinstance(start_date, str):
            start_date = datetime.fromisoformat(start_date)
        if isinstance(end_date, str):
            end_date = datetime.fromisoformat(end_date)

        query_dict = {
            "latitude": f"{latitude:.2f}",
            "longitude": f"{longitude:.2f}",
            "start_date": f"{start_date:%Y-%m-%d}",
            "end_date": f"{end_date:%Y-%m-%d}",
            "hourly": ",".join([val.value for val in options.hourly]),
            "daily": ",".join([val.value for val in options.daily]),
            "timezone": options.timezone.value,
        }
        if options.temperature_unit.value is not None:
            query_dict["temperature_unit"] = options.temperature_unit.value
        if options.wind_speed_unit.value is not None:
            query_dict["windspeed_unit"] = options.wind_speed_unit.value
        if options.rain_unit.value is not None:
            query_dict["precipitation_unit"] = options.rain_unit.value

        query_param_str = urlencode(query_dict)
        request_url = WeatherData.__baseUrl + query_param_str

        response = requests.get(request_url, timeout=60)
        json_data = response.json()
        meta_data = MetaDataModelBased.from_dict(json_data)

        daily_df = DataFrame.from_dict(json_data["daily"])
        hourly_df = DataFrame.from_dict(json_data["hourly"])
        daily_df["time"] = to_datetime(daily_df["time"], format="%Y-%m-%d")
        hourly_df["time"] = to_datetime(hourly_df["time"], format="%Y-%m-%dT%H:%M")
        daily_df = daily_df.set_index("time")
        hourly_df = hourly_df.set_index("time")

        return (meta_data, daily_df, hourly_df)

    @staticmethod
    def __validateStation(
        station: Series, start_date: datetime, end_date: datetime, require_hourly: bool, require_daily: bool
    ):
        valid = True
        if require_hourly:
            valid = valid and station["hourly_start"] < start_date
            valid = valid and station["hourly_end"] > end_date
        if require_daily:
            valid = valid and station["daily_start"] < start_date
            valid = valid and station["daily_end"] > end_date
        return valid
