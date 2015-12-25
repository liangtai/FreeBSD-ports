# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-wildmidi
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MIDI file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libWildMidi.so:${PORTSDIR}/audio/wildmidi

QMMPPLUGIN_TARGET=	Input/wildmidi
QMMPPLUGIN_OPTIONS=	WILDMIDI_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
