# $FreeBSD$

PORTNAME=	qmmp-plugin-bs2b
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Bauer stereophonic-to-binaural dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libbs2b.so:${PORTSDIR}/audio/libbs2b

QMMPPLUGIN_TARGET=	Effect/bs2b
QMMPPLUGIN_TAG=	BS2B

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
