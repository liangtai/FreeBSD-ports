# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-qsui
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Non-skinned UI plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

QMMPPLUGIN_TARGET=	Ui/qsui
QMMPPLUGIN_TAG=	QSUI

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
