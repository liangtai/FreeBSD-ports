# $FreeBSD$

PORTNAME=	qmmp-plugin-wildmidi
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MIDI file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libWildMidi.so:${PORTSDIR}/audio/wildmidi

QMMPPLUGIN_TARGET=	Input/wildmidi
QMMPPLUGIN_TAG=	MIDI

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
