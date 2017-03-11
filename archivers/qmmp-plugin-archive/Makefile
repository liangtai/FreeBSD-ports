# $FreeBSD$

PORTNAME=	qmmp-plugin-archive
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	archivers multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	streaming archive formats handler plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libarchive.so:archivers/libarchive \
		libtag.so:audio/taglib
BUILD_DEPENDS+=	taglib>=1.11:audio/taglib

QMMPPLUGIN_TARGET=	Input/archive
QMMPPLUGIN_OPTIONS=	ARCHIVE_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
