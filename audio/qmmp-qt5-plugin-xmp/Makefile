# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-xmp
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	XMP plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libxmp.so:${PORTSDIR}/audio/libxmp

QMMPPLUGIN_TARGET=	Input/xmp
QMMPPLUGIN_OPTIONS=	XMP_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack-qt5/Makefile.plugin"
.include <bsd.port.mk>
