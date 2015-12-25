# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-coverart
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	graphics multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Plug-in of QMMP (Qt5) to fetch and show the cover art

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib

QMMPPLUGIN_TARGET=	General/covermanager
QMMPPLUGIN_TAG=	COVER

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
