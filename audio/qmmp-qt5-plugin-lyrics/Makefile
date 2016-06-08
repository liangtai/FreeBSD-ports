# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-lyrics
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Show lyrics plug-in of QMMP (Qt5) using lyrics.wikia.com

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT5+=	network

QMMPPLUGIN_TARGET=	General/lyrics
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
