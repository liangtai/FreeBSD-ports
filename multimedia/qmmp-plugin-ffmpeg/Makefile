# $FreeBSD$

PORTNAME=	qmmp-plugin-ffmpeg
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FFmpeg plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libavcodec.so:multimedia/ffmpeg

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Input/ffmpeg
QMMPPLUGIN_TAG=	FFMPEG

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
