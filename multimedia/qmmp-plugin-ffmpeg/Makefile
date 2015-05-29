# $FreeBSD$

PORTNAME=	qmmp-plugin-ffmpeg
CATEGORIES=	multimedia

COMMENT=	FFmpeg plug-in of QMMP

LIB_DEPENDS+=	libavcodec.so:${PORTSDIR}/multimedia/ffmpeg

QMMPPLUGIN_TARGET=	Input/ffmpeg
QMMPPLUGIN_OPTIONS=	FFMPEG_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
