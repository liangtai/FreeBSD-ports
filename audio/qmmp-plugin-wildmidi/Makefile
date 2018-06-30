# $FreeBSD$

PORTNAME=	qmmp-plugin-wildmidi
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MIDI file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libWildMidi.so:audio/wildmidi

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Input/wildmidi
QMMPPLUGIN_OPTIONS=	WILDMIDI_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
