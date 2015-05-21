# $FreeBSD$

PORTNAME=	qmmp-plugin-wavpack
CATEGORIES=	audio multimedia

COMMENT=	wavpack file format plug-in of QMMP

LIB_DEPENDS+=	libwavpack.so:${PORTSDIR}/audio/wavpack

QMMPPLUGIN_TARGET=	Input/wavpack
QMMPPLUGIN_TAG=	WAVPACK

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
