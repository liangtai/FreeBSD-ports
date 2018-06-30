# $FreeBSD$

PORTNAME=	qmmp-plugin-curl
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	ftp multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CURL plug-in of QMMP (Qt4)

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	ENCA
OPTIONS_DEFAULT=	ENCA

ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:converters/enca
ENCA_CMAKE_BOOL=	USE_ENCA

LIB_DEPENDS+=	libcurl.so:ftp/curl

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Transports/http
QMMPPLUGIN_TAG=	CURL

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
