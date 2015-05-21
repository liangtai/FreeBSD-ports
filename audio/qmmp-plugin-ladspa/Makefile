# $FreeBSD$

PORTNAME=	qmmp-plugin-ladspa
CATEGORIES=	audio multimedia

COMMENT=	ladspa dsp-effect plug-in of QMMP

RUN_DEPENDS+=	analyseplugin:${PORTSDIR}/audio/ladspa

QMMPPLUGIN_TARGET=	Effect/ladspa
QMMPPLUGIN_TAG=	LADSPA

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
