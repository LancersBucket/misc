"""Time conversions between UPM and Unix"""
import random
import time

# The events of Project-6 start on Cycle 302, Solaris 3275
# 387 Cycles in a Solaris
# 20 Hours in a Cycle
def upm_to_ts(solari: int, cycles: int = None, hours: int = None, minutes: int = None, seconds: int = None):
    """Converts UPM time to a timestamp"""
    ts = 0

    ts += solari*387*20*60*60
    if cycles is not None:
        ts += cycles*20*60*60
    if hours is not None:
        ts += hours*60*60
    if minutes is not None:
        ts += minutes*60
    if seconds is not None:
        ts += seconds

    return ts

def ts_to_upm(ts):
    """Converts a timestamp to UPM time"""
    s = ts%60
    ts //= 60

    m = ts%60
    ts //= 60

    h = ts%20
    ts //= 20

    ts -= 1
    c = ts%387
    c += 1
    ts //= 387

    sol = ts

    return sol,c,h,m,s

def ts_to_dtime(ts):
    """Converts a timestamp to a human-readable date"""
    sol, c, h, m, s = ts_to_upm(ts)
    return f"Cycle {c:0>3}, Solaris {sol:0>4} {h:0>2}:{m:0>2}:{s:0>2}"

def dtime_to_ts(read):
    """Converts a human-readable date to a timestamp"""
    delimiters = [" ",":","Cycle",",","Solaris"]
    for delim in delimiters:
        read = " ".join(read.split(delim))
    read = read.split()
    return upm_to_ts(int(read[1]),int(read[0]),int(read[2]),int(read[3]),int(read[4]))

def cunix_to_upm_dtime():
    """Converts the current unix timestamp to a UPM date"""
    return ts_to_dtime(int(time.time()) + 63853736660)

def unix_to_upm_dtime(unix):
    """Converts a unix timestamp to a UPM date"""
    return ts_to_dtime(unix + 63853736660)

def unix_to_ts(unix):
    """Converts a unix timestamp to a UPM timestamp"""
    return unix - 63853736660

def ts_to_unix(ts):
    """Converts a unix timestamp to a UPM timestamp"""
    return ts + 63853736660

def subtract_ts_ptime(t1, t2):
    """Subtracts two timestamps and returns upm readable time"""
    sol, c, _h, _m, _s = ts_to_upm(t1-t2)
    return f"{sol} Solari, {c:0>3} Cycles"

def unix_dtime(unix):
    """Converts unix timestamp to human readable"""
    s = unix%60
    unix //= 60

    m = unix%60
    unix //= 60

    h = unix%24
    unix //= 24

    m = unix%12
    unix //= 12

    d = unix%30
    unix //= 30

    y = unix

    return f'{y:0>4}-{m:0>2}-{d:0>2} {h:0>2}:{m:0>2}:{s:0>2}'

CT = upm_to_ts(3247,1)

BIRTHYEAR = 3275-48

#rng = random.randrange(1,387)

#print(unix_dtime(ts_to_unix(upm_to_ts(3247,1))))

print(subtract_ts_ptime(CT,upm_to_ts(BIRTHYEAR,376)))

#print("")

#print("Random Number: " + str(rng))
#print(subtract_ts_ptime(CT,upm_to_ts(BIRTHYEAR,rng)))

#print("")

#print(subtract_ts_ptime(CT,upm_to_ts(3230,235)))
