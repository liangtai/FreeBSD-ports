# $FreeBSD$

PORTNAME=	qmmp-plugin-flac
CATEGORIES=	audio multimedia

COMMENT=	flac file format plug-in of QMMP

LIB_DEPENDS+=	libFLAC.so:${PORTSDIR}/audio/flac \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/flac
QMMPPLUGIN_OPTIONS=	FLAC_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
