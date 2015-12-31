# $FreeBSD$

PORTNAME=	qmmp-plugin-rgscan
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ReplayGain scanner plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libtag.so:${PORTSDIR}/audio/taglib \
	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	General/rgscan
QMMPPLUGIN_TAG=	RGSCAN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
