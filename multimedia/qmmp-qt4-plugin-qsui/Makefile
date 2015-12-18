# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-qsui
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Non-skinned UI plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network uic_build

QMMPPLUGIN_TARGET=	Ui/qsui
QMMPPLUGIN_OPTIONS=	SIMPLE_UI_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
