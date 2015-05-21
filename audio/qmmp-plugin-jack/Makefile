# $FreeBSD$

PORTNAME=	qmmp-plugin-jack
CATEGORIES=	audio multimedia

COMMENT=	jack output plug-in of QMMP

LIB_DEPENDS+=	libjack.so:${PORTSDIR}/audio/jack
BUILD_DEPENDS+=	jackit>=0.121.2:${PORTSDIR}/audio/jack

QMMPPLUGIN_TARGET=	Output/jack
QMMPPLUGIN_TAG=	JACK

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
