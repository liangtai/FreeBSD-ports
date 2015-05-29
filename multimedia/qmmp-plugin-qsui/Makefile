# $FreeBSD$

PORTNAME=	qmmp-plugin-qsui
CATEGORIES=	multimedia

COMMENT=	non-skinned UI plug-in of QMMP

USE_QT4+=	network uic_build
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	Ui/qsui
QMMPPLUGIN_OPTIONS=	SIMPLE_UI_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp-plugin-pack/distinfo
.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
