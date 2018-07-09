import sympy
import time
from db import Database

print("Enter your filename: ")
filename = input()

try:
    file = open(filename, 'r')
    for line in file:
        try:
            result = sympy.solve(str(line))
            Database.callFunction("add_eq", str(line), str(result))
            id = Database.callFunction("get_id", str(line))
            id = id[0][0]
            code = {
                "eq" : str(line),
                "res" : str(result)
            }
            Database.callFunction("add_log", id, str(code), time.strftime("%H:%M:%S"))

        except Exception as err:
            print(err)
            id = Database.callFunction("get_id", str(line))
            id = id[0][0]
            print(Database.callFunction("add_log", id, "error in {"+line+'}',time.strftime("%H:%M:%S") ))

except Exception as Error:
    print(str(Error))