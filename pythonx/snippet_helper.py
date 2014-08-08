from string import capwords
def className(fileName):
    str = ''.join(capwords(fileName,"_").split("_"))
    return str

