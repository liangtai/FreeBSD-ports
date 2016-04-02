# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-ladspa
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Ladspa dsp-effect plug-in of QMMP (Qt5)

LICENSE=	GPLv2

RUN_DEPENDS+=	analyseplugin:audio/ladspa

QMMPPLUGIN_TARGET=	Effect/ladspa
QMMPPLUGIN_OPTIONS=	LADSPA_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
