import pandas as pd
import os.path
from BioHelpers_FABER.cmap import Cmap
from itertools import chain
import warnings

warnings.filterwarnings("ignore")

PATH_VALIDATION_SET = "VS_Post_Barnacle/"
CSV_FILE = "VS_final.csv"


def main() -> None:
    df = pd.read_csv(PATH_VALIDATION_SET + CSV_FILE, comment="#")
    df["Unmodelled_Regions"] = ""
    df["Unmodelled_Regions"] = df["Unmodelled_Regions"].astype("object")
    for i, e in df.iterrows():
        if os.path.isfile(f"{PATH_VALIDATION_SET}PDB/fixed/{e.Filename}.pdb"):
            cm = Cmap()
            cm.load_native_pdb(
                f"{PATH_VALIDATION_SET}PDB/fixed/{e.Filename}.pdb",
                id=e.PDB,
                start_from_one=e.From_One,
                added_tail=e.Add_Tail,
            )
            print(
                f"Loaded {e.Filename}.pdb - unmodelled regions {cm.get_unmodelled_regions()} - L={cm.l}"
            )
            df.at[i, "Unmodelled_Regions"] = cm.get_unmodelled_regions()
        else:
            print(f"Couldn't find {e.Filename}.pdb")
    # df.to_csv(f"{PATH_VALIDATION_SET}{CSV_FILE}", index=False)


if __name__ == "__main__":
    main()
