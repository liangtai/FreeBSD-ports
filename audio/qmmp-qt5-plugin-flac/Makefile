# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-flac
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FLAC file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libFLAC.so:audio/flac \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/flac
QMMPPLUGIN_TAG=	FLAC

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
