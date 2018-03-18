# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-archive
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	archivers multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	streaming archive formats handler plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libtag.so:audio/taglib
USES+=	libarchive

QMMPPLUGIN_TARGET=	Input/archive
QMMPPLUGIN_OPTION=	ARCHIVE_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
