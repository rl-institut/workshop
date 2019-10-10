import pytest

from code_def.calc import Calc

# run these tests with `pytest tests/test_calc.py` or `py.test tests/test_calc.py`


def test_add_two_numbers():
    c = Calc()

    res = c.add(4, 5)

    assert res == 9

# Exercise A
# add a method to the class Calc with the following requirements :
# - it shall perform the multiplication of more than 2 numbers
# - it shall throw a ValueError exception when a multiplication by zero occur

# Exercise B
# add a method to the class Calc with the following requirements :
# - it shall perform the division of two numbers
# - it shall return a float
# - it shall throw a ValueError exception when a division by 0 occur

# Tip - to test error throwing, use this syntax:
#
# with pytest.raises(<Name of your Error>):
#     # write the code which should raise your error here
