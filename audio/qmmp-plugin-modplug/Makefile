# $FreeBSD$

PORTNAME=	qmmp-plugin-modplug
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Modplug file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmodplug.so:${PORTSDIR}/audio/libmodplug

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Input/modplug
QMMPPLUGIN_TAG=	MODPLUG

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
