from Bio.PDB.PDBParser import PDBParser
from Bio.PDB.PDBIO import PDBIO
from Bio.PDB.Residue import Residue
from Bio.PDB.Chain import Chain
from Bio.PDB.Model import Model
from Bio.PDB.Structure import Structure
import Bio.PDB as pdb
import warnings
import argparse
import logging

logger = logging.getLogger(__name__)

warnings.filterwarnings("ignore")


def load_pdb_chain(filename: str, chain: str | None) -> Chain:
    parser = PDBParser()
    struct = parser.get_structure("", filename)
    assert struct is not None
    struct = struct[0]
    if chain == None:  # Pick first chain
        c = next(struct.get_chains())
        logger.info(f"Load first chain from {filename}: {c.get_id()}")
    else:
        logger.info(f"Load chain{chain} from file {filename}")
        c = struct[chain]
    return c


def write_pdb_from_structure(s: Structure, output: str | None) -> None:
    io = PDBIO()
    io.set_structure(s)
    if output == None:
        logger.info(f"Write PDB as output.pdb.")
        io.save("output.pdb")
    else:
        logger.info(f"Write PDB as {output}.")
        io.save(output)


def add_number_to_residue(res: Residue, number: int) -> Residue:
    r = Residue((" ", res.id[1] + number, " "), res.get_resname(), " ")
    list(map(r.add, list(res.get_atoms())))
    return r


def create_structure_from_residues(
    residues: list[Residue], chain_name: str
) -> Structure:
    struc = Structure("my_structure")
    model = Model(0)
    chain = Chain(chain_name)

    for res in residues:
        chain.add(res)

    model.add(chain)
    struc.add(model)
    return struc


def main(args: argparse.Namespace):
    chain = load_pdb_chain(args.filename, args.chain)
    residues = list(chain.get_residues())
    logger.info(
        f"All residues {len(residues)} will be renumbered by old_id + {args.number}."
    )
    modified = [add_number_to_residue(r, int(args.number)) for r in residues]
    struc = create_structure_from_residues(modified, chain.get_id())
    write_pdb_from_structure(struc, args.output)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        prog="Adding_ResNumber",
        description="Program adds specific number to each residue number.",
    )
    parser.add_argument("filename")
    parser.add_argument("number", type=int)
    parser.add_argument("-c", "--chain", default=None)
    parser.add_argument("-o", "--output", default=None)
    parser.add_argument("--log")
    args = parser.parse_args()
    logging.basicConfig(
        level=getattr(logging, args.log.upper()),
        format="%(asctime)s-[%(levelname)s]: %(message)s",
        datefmt="%y-%m-%d-%I:%M",
    )
    main(args)
