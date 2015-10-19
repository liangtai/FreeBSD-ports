# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-staticon
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Status icon plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTFOUR}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/statusicon
QMMPPLUGIN_TAG=	STATICON

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
