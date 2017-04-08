# $FreeBSD$

PORTNAME=	qmmp-plugin-filewriter
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	recording plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libvorbisenc.so:audio/libvorbis \
	libqmmpui.so:multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	Effect/filewriter
QMMPPLUGIN_OPTIONS=	FILEWRITER_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
