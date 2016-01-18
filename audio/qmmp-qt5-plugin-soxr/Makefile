# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-soxr
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sox Resampler dsp-effect plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsoxr.so:${PORTSDIR}/audio/soxr

QMMPPLUGIN_TARGET=	Effect/soxr
QMMPPLUGIN_OPTIONS= SOXR

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
