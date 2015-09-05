# $FreeBSD$

PORTNAME=	qmmp-plugin-mpg123
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MPG123 file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libmpg123.so:${PORTSDIR}/audio/mpg123 \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/mpg123
QMMPPLUGIN_TAG=	MPG123

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
