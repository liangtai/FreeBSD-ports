# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-converter
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	File type converter plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	General/converter
QMMPPLUGIN_TAG=	CONVERTER

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
