# $FreeBSD$

PORTNAME=	qmmp-plugin-udisks2
CATEGORIES=	sysutils multimedia

COMMENT=	removable disc detecting plug-in of QMMP

USE_QT4+=	dbus network xml
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/udisks2
QMMPPLUGIN_OPTIONS=	UDISKS2_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
