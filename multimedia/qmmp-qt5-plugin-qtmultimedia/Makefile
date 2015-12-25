# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-qtmultimedia
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	QtMultimedia output plug-in of QMMP (Qt5)

LICENSE=	GPLv2

USE_QT5+=	multimedia

QMMPPLUGIN_TARGET=	Output/qtmultimedia
QMMPPLUGIN_OPTIONS=	QTMULTIMEDIA_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
