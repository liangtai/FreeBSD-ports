# $FreeBSD$

PORTNAME=	qmmp-plugin-udisks
CATEGORIES=	sysutils multimedia

COMMENT=	removable disc detecting plug-in of QMMP (legacy)

USE_QT4+=	dbus network xml
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/udisks
QMMPPLUGIN_OPTIONS=	UDISKS_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
