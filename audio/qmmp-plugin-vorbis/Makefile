# $FreeBSD$

PORTNAME=	qmmp-plugin-vorbis
CATEGORIES=	audio multimedia

COMMENT=	vorbis file format plug-in of QMMP

LIB_DEPENDS+=	libvorbis.so:${PORTSDIR}/audio/libvorbis \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/vorbis
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
