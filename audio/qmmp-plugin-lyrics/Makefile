# $FreeBSD$

PORTNAME=	qmmp-plugin-lyrics
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Show lyrics plug-in of QMMP (Qt4) using lyrics.wikia.com

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/lyrics
QMMPPLUGIN_TAG=	LYRICS

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
