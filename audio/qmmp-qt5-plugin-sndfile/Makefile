# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-sndfile
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sndfile media format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsndfile.so:audio/libsndfile

QMMPPLUGIN_TARGET=	Input/sndfile
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
