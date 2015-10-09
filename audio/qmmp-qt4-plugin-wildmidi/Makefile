# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-wildmidi
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MIDI file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libWildMidi.so:${PORTSDIR}/audio/wildmidi

QMMPPLUGIN_TARGET=	Input/wildmidi
QMMPPLUGIN_TAG=	MIDI

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
