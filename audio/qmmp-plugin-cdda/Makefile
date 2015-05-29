# $FreeBSD$

PORTNAME=	qmmp-plugin-cdda
CATEGORIES=	audio multimedia sysutils

COMMENT=	cdda media plug-in of QMMP

LIB_DEPENDS+=	libcdio.so:${PORTSDIR}/sysutils/libcdio \
	libcdio_cdda.so:${PORTSDIR}/sysutils/libcdio-paranoia

QMMPPLUGIN_TARGET=	Input/cdaudio
QMMPPLUGIN_OPTIONS=	CDAUDIO_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
