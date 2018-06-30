# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-history
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Listening history plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT+=	sql

QMMPPLUGIN_TARGET=	General/history
QMMPPLUGIN_TAG=	HISTORY

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack-qt5/Makefile.plugin"
.include <bsd.port.mk>
