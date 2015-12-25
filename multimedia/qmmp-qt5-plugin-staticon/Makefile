# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-staticon
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Status icon plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib

QMMPPLUGIN_TARGET=	General/statusicon
QMMPPLUGIN_TAG=	STATICON

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
