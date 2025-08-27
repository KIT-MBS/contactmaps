import pandas as pd
from BioHelpers_FABER.rmsd import rmsd_pdb
import ast
import warnings
import argparse

warnings.filterwarnings("ignore")


def rmsd_dataframe(dataframe_filename: str) -> pd.DataFrame:
    df = pd.read_csv(dataframe_filename, comment="#")
    # df = df[df["Filename"] == "5lyu_A"]
    methods = ["mfdca", "coconet", "barnacle_gauss", "barnacle_vanilla"]
    for method in methods:
        df[f"RMSD_{method}"] = 99.9
    for i, row in df.iterrows():
        print("----------------------------")
        print(row.Filename)
        t = ast.literal_eval(row.Unmodelled_Regions)
        print(t)
        for method in methods:
            try:
                print(method)
                rmsd = rmsd_pdb(
                    f"PDB/fixed/{row.Filename}_rpr.pdb",
                    f"Prediction/{row.Filename}_{method}.pdb",
                    exclude_residues=t,
                )
                print(rmsd)
                df.at[i, f"RMSD_{method}"] = rmsd
            except Exception as e:
                print(f"Did not work for {row.Filename}: {e}")
                break
    return df


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        prog="RMSD-To-Dataframe",
        description="Scripts reads from a dataframe the pdbs and calculates the RMSD for each entry.",
    )
    parser.add_argument("input_csv")
    parser.add_argument(
        "-o",
        "--output",
    )
    args = parser.parse_args()
    in_frame = args.input_csv
    out_frame = rmsd_dataframe(in_frame)
    if args.output is not None:
        print(f"Write to {args.output}")
        out_frame.to_csv(args.output, index=False)
