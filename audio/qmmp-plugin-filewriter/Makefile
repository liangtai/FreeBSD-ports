# $FreeBSD$

PORTNAME=	qmmp-plugin-filewriter
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	recording plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libvorbisenc.so:audio/libvorbis \
	libqmmpui.so:multimedia/qmmp-uilib

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Effect/filewriter
QMMPPLUGIN_TAG=	FILEWRITER

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
