# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-converter
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	File type converter plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	General/converter
QMMPPLUGIN_TAG=	CONVERTER

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
