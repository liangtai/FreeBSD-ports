# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-fileops
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Playlist operation plug-in of QMMP (Qt4) to operate files

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/fileops
QMMPPLUGIN_TAG=	FILEOPS

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
