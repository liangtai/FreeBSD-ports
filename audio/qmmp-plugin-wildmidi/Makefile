# $FreeBSD$

PORTNAME=	qmmp-plugin-wildmidi
CATEGORIES=	audio multimedia

COMMENT=	MIDI file format plug-in of QMMP

LIB_DEPENDS+=	libWildMidi.so:${PORTSDIR}/audio/wildmidi

QMMPPLUGIN_TARGET=	Input/wildmidi
QMMPPLUGIN_TAG=	MIDI

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
