# $FreeBSD$

PORTNAME=	qmmp-plugin-curl
CATEGORIES=	ftp multimedia

COMMENT=	curl plug-in of QMMP

LIB_DEPENDS+=	libcurl.so:${PORTSDIR}/ftp/curl

QMMPPLUGIN_TARGET=	Transports/http
QMMPPLUGIN_TAG=	CURL

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
