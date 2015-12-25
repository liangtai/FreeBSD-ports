# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-srconv
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sample rate converter dsp-effect plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsamplerate.so:${PORTSDIR}/audio/libsamplerate

QMMPPLUGIN_TARGET=	Effect/srconverter
QMMPPLUGIN_TAG=	SRC

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
