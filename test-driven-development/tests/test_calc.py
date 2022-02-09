import pytest

from code_def.calc import Calculator

# run these tests with `pytest tests/test_calc.py` or `py.test tests/test_calc.py`

@pytest.fixture
def c():
    return Calculator()


def test_add_two_numbers(c):

    res = c.add(4, 5)

    assert res == 9

    
def test_add_three_numbers(c):

    res = c.add(4, 5, 6)

    assert res == 15, "some helpful message"
  

from code_def.calc import Calc

def test_add_many_numbers():
    s = range(100)

    assert Calc().add(*s) == 4950 

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
