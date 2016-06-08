# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-projectm
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	graphics multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ProjectM music visualiser plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libprojectM.so:graphics/libprojectm

USE_GL=	gl

QMMPPLUGIN_TARGET=	Visual/projectm
QMMPPLUGIN_TAG=	PROJECTM

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
