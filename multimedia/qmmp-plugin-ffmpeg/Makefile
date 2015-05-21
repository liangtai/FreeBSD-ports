# $FreeBSD$

PORTNAME=	qmmp-plugin-ffmpeg
CATEGORIES=	multimedia

COMMENT=	FFmpeg plug-in of QMMP

LIB_DEPENDS+=	libavcodec.so:${PORTSDIR}/multimedia/ffmpeg

QMMPPLUGIN_TARGET=	Input/ffmpeg
QMMPPLUGIN_TAG=	FFMPEG

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
