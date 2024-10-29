QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    CaptureWindow.cpp \
    PacketSniffer.cpp \
    main.cpp

HEADERS += \
    BasePacketFilter.h \
    CaptureWindow.h \
    HexHelper.h \
    IPHeader.h \
    IPPacket.h \
    IPUtils.h \
    Packet.h \
    PacketFilter.h \
    PacketSniffer.h \
    PacketSnifferExceptions.h \
    PortFilter.h \
    ProtocolFilter.h \
    TCPHeader.h \
    TCPPacket.h \
    UDPHeader.h \
    UDPPacket.h

FORMS +=

# Подключаем библиотеку для работы с сокетами в Windows
win32: LIBS += -lws2_32

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target