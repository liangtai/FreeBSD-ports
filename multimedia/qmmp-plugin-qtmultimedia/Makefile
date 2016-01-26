# $FreeBSD$

PORTNAME=	qmmp-plugin-qtmultimedia
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	QtMultimedia output plug-in of QMMP (Qt4)

LICENSE=	GPLv2

USE_QT4+=	multimedia uic_build

QMMPPLUGIN_TARGET=	Output/qtmultimedia
QMMPPLUGIN_TAG=	QTMULTIMEDIA

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
