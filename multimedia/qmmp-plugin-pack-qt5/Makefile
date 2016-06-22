# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	1.1.0
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty
PKGNAMESUFFIX=	-qt5

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of additional QMMP (Qt5) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 SRCONV XMP
OPTIONS_DEFAULT=	FFAP MPG123 XMP

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

FFAP_DESC=		Support APE sound file
FFAP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffap.so:audio/qmmp-qt5-plugin-ffap
MPG123_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpg123.so:audio/qmmp-qt5-plugin-mpg123
SRCONV_DESC=	Support the sample rate converter
SRCONV_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libsrconverter.so:audio/qmmp-qt5-plugin-srconv
XMP_DESC=	Support various module formats using libxmp
XMP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libxmp.so:audio/qmmp-qt5-plugin-xmp

.include <bsd.port.mk>
