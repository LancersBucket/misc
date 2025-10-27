"""Lerp functions"""

# laundmo: https://gist.github.com/laundmo/b224b1f4c8ef6ca5fe47e132c8deab56
def lerp(a: float, b: float, t: float) -> float:
    """Linear interpolate on the scale given by a to b, using t as the point on that scale [0,1.0].
    Examples
    --------
        50 == lerp(0, 100, 0.5)
        4.2 == lerp(1, 5, 0.8)
    """
    return (1 - t) * a + t * b

# Bucket
def lerp_step(a: float, b: float, steps: int, pos: int) -> float:
    """Linearly interpolates between a and b, in a number of steps,
        using t as the position on that scale [0, steps]"""
    # Units per step == (b-a)/steps
    return pos*((b-a)/steps) + a
