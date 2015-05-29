# $FreeBSD$

PORTNAME=	qmmp-plugin-scrobbler
CATEGORIES=	net multimedia

COMMENT=	Libre.fm/Last.fm scrobbler plug-in of QMMP

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/scrobbler
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
