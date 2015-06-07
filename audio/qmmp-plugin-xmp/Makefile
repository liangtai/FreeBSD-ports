# $FreeBSD$

PORTNAME=	qmmp-plugin-xmp
CATEGORIES=	audio multimedia

COMMENT=	XMP plug-in of QMMP

LIB_DEPENDS+=	libxmp.so:${PORTSDIR}/audio/libxmp

QMMPPLUGIN_TARGET=	Input/xmp
QMMPPLUGIN_TAG=	XMP

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
