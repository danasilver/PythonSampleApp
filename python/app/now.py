from datetime import datetime

def now():
    now = datetime.now()
    return "It is {}/{}/{}.".format(now.month, now.day, now.year)
