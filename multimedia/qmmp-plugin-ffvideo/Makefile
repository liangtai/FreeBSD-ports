# $FreeBSD$

PORTNAME=	qmmp-plugin-ffvideo
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FFmpeg-based video player plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libavcodec.so:multimedia/ffmpeg

QMMPPLUGIN_TARGET=	Engines/ffvideo
QMMPPLUGIN_TAG=	FFVIDEO

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
