# $FreeBSD$

PORTNAME=	qmmp-plugin-mad
CATEGORIES=	audio multimedia

COMMENT=	mad file format plug-in of QMMP

LIB_DEPENDS+=	libmad.so:${PORTSDIR}/audio/libmad \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/mad
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
