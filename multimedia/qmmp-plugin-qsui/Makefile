# $FreeBSD$

PORTNAME=	qmmp-plugin-qsui
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Non-skinned UI plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network uic_build

QMMPPLUGIN_TARGET=	Ui/qsui
QMMPPLUGIN_TAG=	QSUI

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
