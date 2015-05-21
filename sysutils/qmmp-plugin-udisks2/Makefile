# $FreeBSD$

PORTNAME=	qmmp-plugin-udisks2
CATEGORIES=	sysutils multimedia

COMMENT=	removable disc detecting plug-in of QMMP

USE_QT4+=	dbus network xml
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/udisks2
QMMPPLUGIN_TAG=	UDISKS2

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
