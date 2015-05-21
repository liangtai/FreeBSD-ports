# $FreeBSD$

PORTNAME=	qmmp-plugin-gme
CATEGORIES=	games audio multimedia

COMMENT=	video game music file format plug-in of QMMP

LIB_DEPENDS+=	libgme.so:${PORTSDIR}/audio/libgme

QMMPPLUGIN_TARGET=	Input/gme
QMMPPLUGIN_TAG=	GME

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
