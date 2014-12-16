TARGET = qtqrencode
TEMPLATE = lib

include(qqrencode.pri)

DEFINES += LIBQTQRENCODE_LIBRARY

header_files.files = qqrencode.h \
  libqtqrencode_global.h
header_files.path = /usr/include
INSTALLS += header_files

!win32 {
  target.path = /usr/lib
  INSTALLS += target
}

INCLUDEPATH += $$PWD/../lib/qrencode/include
DEPENDPATH += $$PWD/../lib/qrencode/include
