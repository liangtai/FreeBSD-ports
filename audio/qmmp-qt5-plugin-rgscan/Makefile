# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-rgscan
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ReplayGain scanner plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	General/rgscan
QMMPPLUGIN_TAG=	RGSCAN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
