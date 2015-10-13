# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-projectm
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	graphics multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	ProjectM music visualiser plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libprojectM.so:${PORTSDIR}/graphics/libprojectm

USE_QT4+=	opengl

QMMPPLUGIN_TARGET=	Visual/projectm
QMMPPLUGIN_OPTIONS=	PROJECTM_PLUGIN PROJECTM_20

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
