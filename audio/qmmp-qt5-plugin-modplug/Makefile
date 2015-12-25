# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-modplug
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Modplug file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmodplug.so:${PORTSDIR}/audio/libmodplug

QMMPPLUGIN_TARGET=	Input/modplug
QMMPPLUGIN_TAG=	MODPLUG

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
