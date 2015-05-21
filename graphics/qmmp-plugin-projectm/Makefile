# $FreeBSD$

PORTNAME=	qmmp-plugin-gme
CATEGORIES=	graphics multimedia

COMMENT=	projectM music visualiser plug-in of QMMP

LIB_DEPENDS+=	libprojectM.so.2:${PORTSDIR}/graphics/libprojectm
USE_QT4+=	opengl

QMMPPLUGIN_TARGET=	Visual/projectm
QMMPPLUGIN_TAG=	PROJECTM

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
