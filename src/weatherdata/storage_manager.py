import os
from enum import Enum
from typing import List


class FileTypes(Enum):
    StationData = 0
    ModelBasedData = 1


# NOTE: unused
class StorageManager:
    @staticmethod
    def __getFiles(file_type: FileTypes) -> List[str]:
        files = os.listdir("../../data/weatherdata")
        files = [file for file in files if os.path.splitext(file)[1] == ".csv"]
        if file_type == FileTypes.StationData:
            files = [file for file in files if file.startswith("wd_st_")]
        elif file_type == FileTypes.ModelBasedData:
            files = [file for file in files if file.startswith("wd_mb_")]
        else:
            return []
        return files
