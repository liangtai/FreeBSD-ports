# $FreeBSD$

PORTNAME=	qmmp-plugin-mpg123
CATEGORIES=	audio multimedia

COMMENT=	mpg123 file format plug-in of QMMP

LIB_DEPENDS+=	libmpg123.so:${PORTSDIR}/audio/mpg123 \
	libtag.so:${PORTSDIR}/audio/taglib
USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Input/mpg123
QMMPPLUGIN_OPTIONS=	MPG123_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp-plugin-pack/distinfo
.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
