# $FreeBSD$

PORTNAME=	qmmp-plugin-staticon
CATEGORIES=	multimedia

COMMENT=	status icon plug-in of QMMP

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/statusicon
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
