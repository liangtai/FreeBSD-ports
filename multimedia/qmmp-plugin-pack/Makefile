# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.11.1
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of additional QMMP (Qt4) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP FFVIDEO GOOM HISTORY MPG123 SRCONV XMP
OPTIONS_DEFAULT=	FFAP FFVIDEO GOOM HISTORY MPG123 XMP

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

FFAP_DESC=		Support APE sound file
FFAP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffap.so:audio/qmmp-plugin-ffap
FFVIDEO_DESC=	FFmpeg-based movie player
FFVIDEO_RUN_DEPENDS=	${QMMPLIBDIR}/Engines/libffvideo.so:multimedia/qmmp-plugin-ffvideo
HISTORY_DESC=	Collects information about listened tracks
HISTORY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhistory.so:multimedia/qmmp-plugin-history
MPG123_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpg123.so:audio/qmmp-plugin-mpg123
SRCONV_DESC=	Support the sample rate converter
SRCONV_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libsrconverter.so:audio/qmmp-plugin-srconv
XMP_DESC=	Support various module formats with libxmp
XMP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libxmp.so:audio/qmmp-plugin-xmp
GOOM_DESC=	Goom visual effect
GOOM_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libgoom.so:graphics/qmmp-plugin-goom

.include <bsd.port.mk>
