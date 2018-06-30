# $FreeBSD$

PORTNAME=	qmmp-plugin-converter
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	File type converter plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib \
	libtag.so:audio/taglib

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	General/converter
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
