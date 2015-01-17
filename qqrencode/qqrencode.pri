QT  *= core gui svg

!win32 {
  QMAKE_CXXFLAGS_DEBUG += -std=c++11 -Wno-write-strings
  QMAKE_CXXFLAGS_RELEASE += -std=c++11 -Wno-write-strings
}

SOURCES += $$PWD/qqrencode.cpp

HEADERS += $$PWD/qqrencode.h \
    $$PWD/libqtqrencode_global.h \
    $$PWD/qqrencode_p.h

INCLUDEPATH += $$PWD

win32 {
  INCLUDEPATH += $$PWD/../lib/qrencode/include
  DEPENDPATH += $$PWD/../lib/qrencode/include
  LIBS += -L$$PWD/../lib/qrencode libqrencode.a
} else {
  CONFIG += link_pkgconfig
  PKGCONFIG += libqrencode
}
