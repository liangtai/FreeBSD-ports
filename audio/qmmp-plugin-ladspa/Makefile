# $FreeBSD$

PORTNAME=	qmmp-plugin-ladspa
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Ladspa dsp-effect plug-in of QMMP (Qt4)

LICENSE=	GPLv2

RUN_DEPENDS+=	analyseplugin:audio/ladspa

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Effect/ladspa
QMMPPLUGIN_TAG=	LADSPA

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
