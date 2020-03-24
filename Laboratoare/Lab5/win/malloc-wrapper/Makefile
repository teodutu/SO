CPP = cl
UTILS_DIR=../utils

CFLAGS = /nologo /W3 /D_CRT_SECURE_NO_WARNINGS /I$(UTILS_DIR)

TEST=test

build: $(TEST).exe

$(TEST).exe: $(TEST).obj xmalloc.obj
    $(CPP) /Fe$@ $**

clean:
   del /Q /S /F *.obj *.exe