QT  *= core gui svg

!win32-msvc2010 {
  QMAKE_CXXFLAGS_DEBUG += -std=c++11 -Wno-write-strings
  QMAKE_CXXFLAGS_RELEASE += -std=c++11 -Wno-write-strings
}

SOURCES += $$PWD/qqrencode.cpp

HEADERS += $$PWD/qqrencode.h \
    $$PWD/libqtqrencode_global.h \
    $$PWD/qqrencode_p.h

INCLUDEPATH += $$PWD

win32 {
  LIBS += -L$$PWD/../lib/qrencode -lqrencode
} else {
  CONFIG += link_pkgconfig
  PKGCONFIG += libqrencode
}
