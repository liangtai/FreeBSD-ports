# $FreeBSD$

PORTNAME=	qmmp-plugin-alsa
CATEGORIES=	audio multimedia

COMMENT=	ALSA output plug-in of QMMP

LIB_DEPENDS+=	libasound.so:${PORTSDIR}/audio/alsa-lib

QMMPPLUGIN_TARGET=	Output/alsa
QMMPPLUGIN_TAG=	ALSA

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
