# $FreeBSD$

PORTNAME=	qmmp-plugin-modplug
CATEGORIES=	audio multimedia

COMMENT=	modplug file format plug-in of QMMP

LIB_DEPENDS+=	libmodplug.so:${PORTSDIR}/audio/libmodplug

QMMPPLUGIN_TARGET=	Input/modplug
QMMPPLUGIN_TAG=	MODPLUG

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
