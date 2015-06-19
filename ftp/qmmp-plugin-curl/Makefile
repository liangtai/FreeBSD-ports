# $FreeBSD$

PORTNAME=	qmmp-plugin-curl
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	ftp multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CURL plug-in of QMMP

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	ENCA
OPTIONS_DEFAULT=	ENCA

ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:${PORTSDIR}/converters/enca
ENCA_QMAKE_CONFIG=	WITH_ENCA

LIB_DEPENDS+=	libcurl.so:${PORTSDIR}/ftp/curl

QMMPPLUGIN_TARGET=	Transports/http
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/options.qmake.mk"
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
