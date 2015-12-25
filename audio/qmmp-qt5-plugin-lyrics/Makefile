# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-lyrics
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Show lyrics plug-in of QMMP (Qt5) using lyrics.wikia.com

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib

QMMPPLUGIN_TARGET=	General/lyrics
QMMPPLUGIN_TAG=	LYRICS

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
