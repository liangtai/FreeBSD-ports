# $FreeBSD$

PORTNAME=	qmmp-plugin-ladspa
CATEGORIES=	audio multimedia

COMMENT=	ladspa dsp-effect plug-in of QMMP

RUN_DEPENDS+=	analyseplugin:${PORTSDIR}/audio/ladspa

QMMPPLUGIN_TARGET=	Effect/ladspa
QMMPPLUGIN_OPTIONS=	LADSPA_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
