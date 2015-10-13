# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-ffmpeg
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FFmpeg plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libavcodec.so:${PORTSDIR}/multimedia/ffmpeg

QMMPPLUGIN_TARGET=	Input/ffmpeg
QMMPPLUGIN_OPTIONS=	FFMPEG_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
