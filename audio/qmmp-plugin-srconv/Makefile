# $FreeBSD$

PORTNAME=	qmmp-plugin-srconv
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sample rate converter dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsamplerate.so:audio/libsamplerate

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Effect/srconverter
QMMPPLUGIN_OPTIONS=	SRC_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
