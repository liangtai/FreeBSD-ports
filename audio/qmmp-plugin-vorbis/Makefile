# $FreeBSD$

PORTNAME=	qmmp-plugin-vorbis
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Vorbis file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libvorbis.so:audio/libvorbis \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/vorbis
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
