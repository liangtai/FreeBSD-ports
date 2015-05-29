# $FreeBSD$

PORTNAME=	qmmp-plugin-pulseaudio
CATEGORIES=	audio multimedia

COMMENT=	pulseaudio output plug-in of QMMP

LIB_DEPENDS+=	libpulse.so:${PORTSDIR}/audio/pulseaudio

QMMPPLUGIN_TARGET=	Output/pulseaudio
QMMPPLUGIN_OPTIONS=	PULSE_AUDIO_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
