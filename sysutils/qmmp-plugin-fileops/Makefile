# $FreeBSD$

PORTNAME=	qmmp-plugin-fileops
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Playlist operation plug-in of QMMP (Qt4) to operate files

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	General/fileops
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
