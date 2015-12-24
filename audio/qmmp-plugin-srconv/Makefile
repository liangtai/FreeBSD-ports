# $FreeBSD$

PORTNAME=	qmmp-plugin-srconv
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sample rate converter dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsamplerate.so:${PORTSDIR}/audio/libsamplerate

QMMPPLUGIN_TARGET=	Effect/srconverter
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
