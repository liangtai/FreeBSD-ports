# $FreeBSD$

PORTNAME=	qmmp-plugin-scrobbler
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	net multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Libre.fm/Last.fm scrobbler plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/scrobbler
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
