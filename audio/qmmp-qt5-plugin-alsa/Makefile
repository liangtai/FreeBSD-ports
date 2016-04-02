# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-alsa
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ALSA output plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libasound.so:audio/alsa-lib

QMMPPLUGIN_TARGET=	Output/alsa
QMMPPLUGIN_TAG=	ALSA

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
