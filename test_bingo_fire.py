import pytest
from bingo_fire import bingo_fire  # Import the function from your module


def test_bingo_fire():  # Define the test function
    assert bingo_fire(7) == "Bingo"  # Check if bingo_fire(7) returns "Bingo"


pytest.main()  # Run the test
