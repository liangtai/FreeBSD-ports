# $FreeBSD$

PORTNAME=	qmmp-plugin-wildmidi
PORTVERSION=	${QMMP_VERSION}
PORTREVISION+=	1
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MIDI file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libWildMidi.so.1:audio/wildmidi03

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Input/wildmidi
QMMPPLUGIN_TAG=	MIDI

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
