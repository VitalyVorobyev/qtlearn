QT -= gui

TARGET = cm-lib
TEMPLATE = lib
DEFINES += CMLIB_LIBRARY

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    cm-lib.cpp \
    source/controllers/command-controller.cpp \
    source/data/datadecorator.cpp \
    source/data/datetimedecorator.cpp \
    source/data/enumeratordecorator.cpp \
    source/data/intdecorator.cpp \
    source/data/stringdecorator.cpp \
    source/framework/command.cpp \
    source/models/client.cpp \
    source/controllers/master-controller.cpp \

HEADERS += \
    cm-lib.h \
    cm-lib_global.h \
    source/controllers/command-controller.h \
    source/data/datadecorator.h \
    source/data/datetimedecorator.h \
    source/data/enumeratordecorator.h \
    source/data/intdecorator.h \
    source/data/stringdecorator.h \
    source/framework/command.h \
    source/models/client.h \
    source/controllers/master-controller.h \
    source/controllers/navigation-controller.h \

INCLUDEPATH += source

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
