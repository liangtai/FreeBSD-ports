# $FreeBSD$

PORTNAME=	qmmp-plugin-sndfile
CATEGORIES=	audio multimedia

COMMENT=	sndfile media format plug-in of QMMP

LIB_DEPENDS+=	libsndfile.so:${PORTSDIR}/audio/libsndfile

QMMPPLUGIN_TARGET=	Input/sndfile
QMMPPLUGIN_TAG=	SNDFILE

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
