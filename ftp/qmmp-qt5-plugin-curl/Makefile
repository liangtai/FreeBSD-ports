# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-curl
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	ftp multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CURL plug-in of QMMP (Qt5)

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	ENCA
OPTIONS_DEFAULT=	ENCA

ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:converters/enca
ENCA_QMAKE_CONFIG=	WITH_ENCA

LIB_DEPENDS+=	libcurl.so:ftp/curl

QMMPPLUGIN_TARGET=	Transports/http
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt5/options.qmake.mk"
.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
