# $FreeBSD$

PORTNAME=	qmmp-plugin-converter
CATEGORIES=	audio multimedia

COMMENT=	file type converter plug-in of QMMP

LIB_DEPENDS+=	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	General/converter
QMMPPLUGIN_TAG=	CONVERTER

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
