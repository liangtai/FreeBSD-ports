# $FreeBSD$

PORTNAME=	qmmp-plugin-flac
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FLAC file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libFLAC.so:${PORTSDIR}/audio/flac \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/flac
QMMPPLUGIN_OPTIONS=	FLAC_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
