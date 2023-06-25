import numpy as np
import pandas as pd
from window_generator import WindowGenerator


def prep_window_generator():
    df = pd.read_feather("../../data/pollution/processed/interpolated/pm10/814.feather")
    df.set_index("timestamp", inplace=True)

    timestamp_s = df.index.map(pd.Timestamp.timestamp)

    day = 24 * 60 * 60
    year = (365.2425) * day

    df["Day sin"] = np.sin(timestamp_s * (2 * np.pi / day))
    df["Day cos"] = np.cos(timestamp_s * (2 * np.pi / day))
    df["Year sin"] = np.sin(timestamp_s * (2 * np.pi / year))
    df["Year cos"] = np.cos(timestamp_s * (2 * np.pi / year))
    df.reset_index(inplace=True)

    # Convert to radians.
    wd_rad = df.pop("winddirection_10m") * np.pi / 180
    df["winddirection_10m_sin"] = np.sin(wd_rad)
    df["winddirection_10m_cos"] = np.cos(wd_rad)

    return WindowGenerator(input_width=24 * 7, label_width=24, df=df.copy(), label_columns=["pm10"])
