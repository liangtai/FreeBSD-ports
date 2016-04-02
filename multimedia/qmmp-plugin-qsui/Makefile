# $FreeBSD$

PORTNAME=	qmmp-plugin-qsui
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Non-skinned UI plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Ui/qsui
QMMPPLUGIN_OPTIONS=	WITH_QSUI

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
