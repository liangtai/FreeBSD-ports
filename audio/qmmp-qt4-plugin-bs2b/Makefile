# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-bs2b
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Bauer stereophonic-to-binaural dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libbs2b.so:${PORTSDIR}/audio/libbs2b

QMMPPLUGIN_TARGET=	Effect/bs2b
QMMPPLUGIN_OPTIONS=	BS2B_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
