from __future__ import annotations

from datetime import datetime
from enum import Enum
from typing import Any, Dict, List, Tuple, Union
from urllib.parse import urlencode

import requests
from pandas import DataFrame


class StationDataOptions:
    pass


class DailyData(Enum):
    Weathercode = "weathercode"
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


class WeatherData:
    __baseUrl: str = "https://archive-api.open-meteo.com/v1/archive?"

    @staticmethod
    def getStationData(
        longitude: float,
        latitude: float,
        start_date: Union[datetime, str],
        end_date: Union[datetime, str],
        options: StationDataOptions,
    ) -> DataFrame:
        if isinstance(start_date, str):
            start_date = datetime.fromisoformat(start_date)
        if isinstance(end_date, str):
            end_date = datetime.fromisoformat(end_date)
        pass

    @staticmethod
    def getModelBasedData(
        latitude: float,
        longitude: float,
        start_date: Union[datetime, str],
        end_date: Union[datetime, str],
        options: ModelBasedOptions,
    ) -> Tuple[MetaDataModelBased, DataFrame, DataFrame]:
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

        response = requests.get(request_url)
        json_data = response.json()
        meta_data = MetaDataModelBased.from_dict(json_data)

        daily_df = DataFrame.from_dict(json_data["daily"])
        hourly_df = DataFrame.from_dict(json_data["hourly"])

        return (meta_data, daily_df, hourly_df)