# $FreeBSD$

PORTNAME=	qmmp-plugin-coverart
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	graphics multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Plug-in of QMMP (Qt4) to fetch and show the cover art

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT+=	network

QMMPPLUGIN_TARGET=	General/covermanager
QMMPPLUGIN_TAG=	COVER

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
