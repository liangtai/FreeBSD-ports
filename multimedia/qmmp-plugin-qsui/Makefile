# $FreeBSD$

PORTNAME=	qmmp-plugin-qsui
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Non-skinned UI plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT5+=	network

QMMPPLUGIN_TARGET=	Ui/qsui
QMMPPLUGIN_OPTIONS=	SIMPLE_UI_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
