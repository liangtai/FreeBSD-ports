# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-pulseaudio
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Pulseaudio output plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libpulse.so:${PORTSDIR}/audio/pulseaudio

QMMPPLUGIN_TARGET=	Output/pulseaudio
QMMPPLUGIN_TAG=	PULSE

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
