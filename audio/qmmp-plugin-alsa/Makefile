# $FreeBSD$

PORTNAME=	qmmp-plugin-alsa
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ALSA output plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libasound.so:${PORTSDIR}/audio/alsa-lib

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Output/alsa
QMMPPLUGIN_TAG=	ALSA

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
