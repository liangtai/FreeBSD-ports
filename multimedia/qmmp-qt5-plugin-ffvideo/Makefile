# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-ffvideo
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FFmpeg-based video player plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libavcodec.so:multimedia/ffmpeg

QMMPPLUGIN_TARGET=	Engines/ffvideo
QMMPPLUGIN_TAG=	FFVIDEO

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack-qt5/Makefile.plugin"
.include <bsd.port.mk>
