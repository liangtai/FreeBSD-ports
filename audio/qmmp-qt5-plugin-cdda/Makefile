# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-cdda
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia sysutils

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CDDA media plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libcdio.so:sysutils/libcdio \
	libcdio_cdda.so:sysutils/libcdio-paranoia \
	libcddb.so:audio/libcddb

QMMPPLUGIN_TARGET=	Input/cdaudio
QMMPPLUGIN_TAG=	CDA

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
