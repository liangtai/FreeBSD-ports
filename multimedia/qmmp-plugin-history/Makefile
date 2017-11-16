# $FreeBSD$

PORTNAME=	qmmp-plugin-history
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Listening history plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT4+=	sql uic_build

QMMPPLUGIN_TARGET=	General/history
QMMPPLUGIN_TAG=	HISTORY

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
