# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.11.0
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of additional QMMP (Qt4) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP GOOM MPG123 SRCONV XMP
OPTIONS_DEFAULT=	FFAP GOOM MPG123 SRCONV XMP

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

FFAP_DESC=		Support APE sound file
FFAP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffap.so:audio/qmmp-plugin-ffap
MPG123_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpg123.so:audio/qmmp-plugin-mpg123
SRCONV_DESC=	Support the sample rate converter
SRCONV_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libsrconverter.so:audio/qmmp-plugin-srconv
XMP_DESC=	Support various module formats using libxmp
XMP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libxmp.so:audio/qmmp-plugin-xmp
GOOM_DESC=	Goom visual effect
GOOM_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libgoom.so:graphics/qmmp-plugin-goom

.include <bsd.port.mk>
