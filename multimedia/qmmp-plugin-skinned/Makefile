# $FreeBSD$

PORTNAME=	qmmp-plugin-skinned
CATEGORIES=	multimedia

COMMENT=	skinned UI plug-in of QMMP

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	Ui/skinned
QMMPPLUGIN_OPTIONS=	WITH_SKINNED

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
