# $FreeBSD$

PORTNAME=	qmmp-plugin-gme
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	games audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Video game music file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libgme.so:audio/libgme

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Input/gme
QMMPPLUGIN_OPTIONS=	GME_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
