# $FreeBSD$

PORTNAME=	qmmp-plugin-modplug
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Modplug file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmodplug.so:audio/libmodplug

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Input/modplug
QMMPPLUGIN_OPTIONS=	MODPLUG_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
