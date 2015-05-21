# $FreeBSD$

PORTNAME=	qmmp-plugin-coverart
CATEGORIES=	graphics multimedia

COMMENT=	plug-in of QMMP to fetch and show the cover art

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/covermanager
QMMPPLUGIN_TAG=	COVER

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
