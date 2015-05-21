# $FreeBSD$

PORTNAME=	qmmp-plugin-trackchange
CATEGORIES=	misc multimedia

COMMENT=	external command launcher plug-in of QMMP at each track switching

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/trackchange
QMMPPLUGIN_TAG=	TRACKCHANGE

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
