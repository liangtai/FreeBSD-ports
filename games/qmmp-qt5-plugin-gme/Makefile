# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-gme
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	games audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Video game music file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libgme.so:audio/libgme

QMMPPLUGIN_TARGET=	Input/gme
QMMPPLUGIN_OPTIONS=	GME_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
