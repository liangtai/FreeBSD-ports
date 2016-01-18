# $FreeBSD$

PORTNAME=	qmmp-plugin-soxr
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	SoX Resampler dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsoxr.so:${PORTSDIR}/audio/soxr

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Effect/soxr
QMMPPLUGIN_OPTIONS=	SOXR

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
