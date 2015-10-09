# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-gme
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	games audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Video game music file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libgme.so:${PORTSDIR}/audio/libgme

QMMPPLUGIN_TARGET=	Input/gme
QMMPPLUGIN_TAG=	GME

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
