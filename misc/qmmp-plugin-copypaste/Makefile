# $FreeBSD$

PORTNAME=	qmmp-plugin-copypaste
CATEGORIES=	misc multimedia

COMMENT=	playlist operation plug-in of QMMP to copy/paste track infos

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/copypaste
QMMPPLUGIN_TAG=	COPYPASTE

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
