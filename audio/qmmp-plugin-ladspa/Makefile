# $FreeBSD$

PORTNAME=	qmmp-plugin-ladspa
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Ladspa dsp-effect plug-in of QMMP

LICENSE=	GPLv2

RUN_DEPENDS+=	analyseplugin:${PORTSDIR}/audio/ladspa

QMMPPLUGIN_TARGET=	Effect/ladspa
QMMPPLUGIN_OPTIONS=	LADSPA_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
