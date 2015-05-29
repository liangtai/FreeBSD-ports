# $FreeBSD$

PORTNAME=	qmmp-plugin-faad
CATEGORIES=	audio multimedia

COMMENT=	FAAD file format plug-in of QMMP

LIB_DEPENDS+=	libfaad.so:${PORTSDIR}/audio/faad \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/aac
QMMPPLUGIN_OPTIONS=	AAC_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
