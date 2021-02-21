CPP = cl
UTILS_DIR=../utils

CFLAGS = /nologo /W3 /D_CRT_SECURE_NO_WARNINGS /I$(UTILS_DIR)

FILE = dorm_room

build: $(FILE).exe

$(FILE).exe: $(FILE).obj
    $(CPP) /Fe$@ $**

clean:
   del /Q /S /F *.obj *.exe