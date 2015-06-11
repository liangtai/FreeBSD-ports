# $FreeBSD$

PORTNAME=	qmmp-plugin-cdda
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia sysutils

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CDDA media plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libcdio.so:${PORTSDIR}/sysutils/libcdio \
	libcdio_cdda.so:${PORTSDIR}/sysutils/libcdio-paranoia

QMMPPLUGIN_TARGET=	Input/cdaudio
QMMPPLUGIN_OPTIONS=	CDAUDIO_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
