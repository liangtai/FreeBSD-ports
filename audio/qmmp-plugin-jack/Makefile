# $FreeBSD$

PORTNAME=	qmmp-plugin-jack
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Jack output plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libjack.so:audio/jack \
		libsamplerate.so:audio/libsamplerate
BUILD_DEPENDS+=	jackit>=0.121.2:audio/jack

QMMPPLUGIN_TARGET=	Output/jack
QMMPPLUGIN_OPTIONS=	JACK_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
