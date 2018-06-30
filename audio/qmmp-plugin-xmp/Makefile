# $FreeBSD$

PORTNAME=	qmmp-plugin-xmp
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	XMP plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libxmp.so:audio/libxmp

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Input/xmp
QMMPPLUGIN_TAG=	XMP

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
