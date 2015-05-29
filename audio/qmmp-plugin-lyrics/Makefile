# $FreeBSD$

PORTNAME=	qmmp-plugin-lyrics
CATEGORIES=	audio multimedia

COMMENT=	show lyrics plug-in of QMMP using lyrics.wikia.com

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/lyrics
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
