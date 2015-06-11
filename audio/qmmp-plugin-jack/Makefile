# $FreeBSD$

PORTNAME=	qmmp-plugin-jack
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Jack output plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libjack.so:${PORTSDIR}/audio/jack
BUILD_DEPENDS+=	jackit>=0.121.2:${PORTSDIR}/audio/jack

QMMPPLUGIN_TARGET=	Output/jack
QMMPPLUGIN_OPTIONS=	JACK_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
