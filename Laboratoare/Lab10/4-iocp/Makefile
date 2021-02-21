CPP = cl
UTILS_DIR=../utils

CFLAGS = /nologo /W3 /D_CRT_SECURE_NO_WARNINGS /I$(UTILS_DIR) /I../sock_utils

FILE = aio

build: $(FILE).exe

$(FILE).exe: $(FILE).obj iocp.obj
    $(CPP) /Fe$@ $**

clean:
   del /Q /S /F *.obj *.exe *.txt
