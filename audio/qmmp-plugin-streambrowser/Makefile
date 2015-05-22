# $FreeBSD$

PORTNAME=	qmmp-plugin-streambrowser
CATEGORIES=	audio multimedia

COMMENT=	IceCast stream directory browser plug-in of QMMP

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/streambrowser
QMMPPLUGIN_TAG=	SB

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
