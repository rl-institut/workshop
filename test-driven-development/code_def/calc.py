#this one allows checking each argument's type
class Calc:
    def add(self, *args):
        answer = 0
        for num in args:
            answer = answer + num
        return answer