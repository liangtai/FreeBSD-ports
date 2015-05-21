# $FreeBSD$

PORTNAME=	qmmp-plugin-hotkey
CATEGORIES=	accessibility multimedia

COMMENT=	global shortcut keys plug-in of QMMP

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/hotkey
QMMPPLUGIN_TAG=	HOTKEY

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
