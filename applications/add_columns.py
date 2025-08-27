import pandas as pd
import argparse
import typing


def add_default_column(csv_file: str, column: str, value: typing.Any) -> None:
    df = pd.read_csv(csv_file, comment="#")
    df[column] = value
    df.to_csv(csv_file, index=False)


def main():
    parser = argparse.ArgumentParser(
        prog="AddCol",
        description="Add column to csv file with columnname and default value.",
    )
    parser.add_argument("file")
    parser.add_argument("column")
    parser.add_argument("value")
    args = parser.parse_args()

    add_default_column(args.file, args.column, args.value)
    print("Done")


if __name__ == "__main__":
    main()
