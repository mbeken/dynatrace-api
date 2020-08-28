"""[   summary]    
"""

__version__ = '0.0.2'


def doc_test(something, optional=None):
    """[summary]

    Args:
        something ([type]): [description]
        optional ([type], optional): [description]. Defaults to None.

    Raises:
        Exception: [description]

    Returns:
        [type]: [description]
    """
    if something:
        return True
    else:
        raise Exception