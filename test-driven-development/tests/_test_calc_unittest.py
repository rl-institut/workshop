import unittest

from code_def.calc import Calc

# run these tests with `python -m unittest tests/_test_calc_unittest.py`
# to run these tests with pytest, simply remove the '_' at the beginning of the filename


class TestCalcClass(unittest.TestCase):

    def test_add_two_numbers(self):
        c = Calc()

        res = c.add(4, 5)

        self.assertEqual(res, 9)
