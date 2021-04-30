

some_variable = "a string"

def a_function():
    pass

# eine Reihenfolge von Werten macht ein tuple

a_list = ['a', 'b', 'c']
a_list[1] = 'd'
#print(a_list)


class GeomShape:
    """This is a description of the class"""
    
    num_edge = None

    def __init__(self, num_edges, name = "", **kwargs):
        """This is a description of the method"""
        
        print("__init__ from Geom SHape")
        #the kwargs is a way to pass keywords arguments without knowing
        #how many beforhand, they will be contained in a dict
        for arg in kwargs:
            print(arg, kwargs[arg])        
        
        #We want to make sure the number of edges is not impossible
        if num_edges < 3 :
            raise ValueError("a GeomShape needs to have more than 3 edges")
        else:
            if isinstance(num_edges, int):
                self.num_edge = num_edges
            else:
                raise TypeError("Your should input int only")
        
    def area(self):
        print("area from Geom SHape")


    
    def perimeter(self):
        print("perimeter from Geom SHape")