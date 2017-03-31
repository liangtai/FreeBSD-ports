# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-filewriter
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	recording plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libvorbisenc.so:audio/libvorbis

QMMPPLUGIN_TARGET=	Effect/filewriter
QMMPPLUGIN_TAG=	FILEWRITER

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
