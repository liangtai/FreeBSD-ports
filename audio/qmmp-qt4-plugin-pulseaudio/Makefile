# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-pulseaudio
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Pulseaudio output plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libpulse.so:${PORTSDIR}/audio/pulseaudio

QMMPPLUGIN_TARGET=	Output/pulseaudio
QMMPPLUGIN_OPTIONS=	PULSE_AUDIO_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
