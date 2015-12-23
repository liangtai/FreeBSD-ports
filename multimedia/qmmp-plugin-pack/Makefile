# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.9.3
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of additional QMMP (Qt4) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 XMP
OPTIONS_DEFAULT=	FFAP MPG123 XMP

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

FFAP_DESC=		Support APE sound file
FFAP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffap.so:${PORTSDIR}/audio/qmmp-plugin-ffap
MPG123_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpg123.so:${PORTSDIR}/audio/qmmp-plugin-mpg123
XMP_DESC=	Support various module formats with libxmp
XMP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libxmp.so:${PORTSDIR}/audio/qmmp-plugin-xmp

.include <bsd.port.mk>
