import pytest
from bingo_fire import bingo_fire


def test_bingo_fire_contains_7():
    assert bingo_fire(7) == "Bingo"
    assert bingo_fire(77) == "Bingo"


def test_bingo_fire_ends_with_0():
    assert bingo_fire(10) == "Fire"
    assert bingo_fire(20) == "Fire"
    assert bingo_fire(30) == "Fire"


def test_bingo_fire_contains_7_and_ends_with_0():
    assert bingo_fire(70) == "BingoFire"


def test_bingo_fire_neither_7_nor_ends_with_0():
    assert bingo_fire(1) == "1"  # Updated assert for numbers that don't meet any condition


def test_bingo_fire_mixed_conditions():
    assert bingo_fire(37) == "Bingo"


if __name__ == "__main__":
    pytest.main()
