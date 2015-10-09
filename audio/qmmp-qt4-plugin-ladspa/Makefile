# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-ladspa
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Ladspa dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

RUN_DEPENDS+=	analyseplugin:${PORTSDIR}/audio/ladspa

QMMPPLUGIN_TARGET=	Effect/ladspa
QMMPPLUGIN_TAG=	LADSPA

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
