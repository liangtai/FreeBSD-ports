# $FreeBSD$

PORTNAME=	qmmp-plugin-skinned
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Skinned UI plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	Ui/skinned
QMMPPLUGIN_OPTIONS=	WITH_SKINNED

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
