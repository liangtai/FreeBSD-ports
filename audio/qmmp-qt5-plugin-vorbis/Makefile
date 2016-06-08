# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-vorbis
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Vorbis file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libvorbis.so:audio/libvorbis \
	libogg.so:audio/libogg \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/vorbis
QMMPPLUGIN_TAG=	VORBIS

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
