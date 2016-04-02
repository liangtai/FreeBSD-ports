# $FreeBSD$

PORTNAME=	qmmp-plugin-mpg123
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MPG123 file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmpg123.so:audio/mpg123 \
	libtag.so:audio/taglib

USE_QT4=	uic_build

QMMPPLUGIN_TARGET=	Input/mpg123
QMMPPLUGIN_TAG=	MPG123

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
