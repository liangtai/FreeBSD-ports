# $FreeBSD$

PORTNAME=	qmmp-plugin-opus
CATEGORIES=	audio multimedia

COMMENT=	opus file format plug-in of QMMP

LIB_DEPENDS+=	libopusfile.so:${PORTSDIR}/audio/opusfile \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/opus
QMMPPLUGIN_OPTIONS=	OPUS_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
