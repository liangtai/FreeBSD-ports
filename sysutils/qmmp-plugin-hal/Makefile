# $FreeBSD$

PORTNAME=	qmmp-plugin-hal
CATEGORIES=	sysutils multimedia

COMMENT=	HAL (hardware abstraction layer) supporting plug-in of QMMP

USE_QT4+=	dbus network xml
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/hal
QMMPPLUGIN_OPTIONS=	HAL_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
