from string import capwords
'''
Modify the file name from:
something_like_this
to:
SomethingLikeThis
'''
def className(fileName):
    str = ''.join(capwords(fileName,"_").split("_"))
    return str

