# $FreeBSD$

PORTNAME=	qmmp-plugin-fileops
CATEGORIES=	sysutils multimedia

COMMENT=	playlist operation plug-in of QMMP to operate files

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/fileops
QMMPPLUGIN_TAG=	FILEOPS

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
