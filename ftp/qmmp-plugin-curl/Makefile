# $FreeBSD$

PORTNAME=	qmmp-plugin-curl
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	ftp multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CURL plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libcurl.so:${PORTSDIR}/ftp/curl

QMMPPLUGIN_TARGET=	Transports/http
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
