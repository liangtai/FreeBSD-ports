# $FreeBSD$

PORTNAME=	qmmp-plugin-projectm
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	graphics multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ProjectM music visualiser plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libprojectM.so:graphics/libprojectm

USE_QT4+=	opengl
USE_GL=	gl

QMMPPLUGIN_TARGET=	Visual/projectm
QMMPPLUGIN_TAG=	PROJECTM

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
