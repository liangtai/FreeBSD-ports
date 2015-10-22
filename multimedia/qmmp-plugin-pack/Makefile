# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	1.0.1
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/${PORTNAME}/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP

LICENSE=	GPLv2

LIB_DEPENDS=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp
BUILD_DEPENDS=	qmmp>=1.0.0:${PORTSDIR}/multimedia/qmmp

USES=		gmake pkgconfig qmake tar:bzip2
USE_QT5=	core gui buildtools_build linguisttools_build qmake_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 XMP
OPTIONS_DEFAULT=	FFAP MPG123 XMP

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:${PORTSDIR}/audio/taglib
FFAP_QMAKE_CONFIG=	FFAP_PLUGIN
OPTIONS_DEFINE_i386=	FFAPASM
OPTIONS_DEFAULT_i386=	FFAPASM
OPTIONS_DEFINE_amd64=	FFAPASM
OPTIONS_DEFAULT_amd64=	FFAPASM
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM_QMAKE_CONFIG=	FFAP_YASM

MPG123_LIB_DEPENDS=	libmpg123.so:${PORTSDIR}/audio/mpg123
MPG123_QMAKE_CONFIG=	MPG123_PLUGIN

XMP_DESC=	Support various module formats using libxmp
XMP_LIB_DEPENDS=	libxmp.so:${PORTSDIR}/audio/libxmp
XMP_QMAKE_CONFIG=	XMP_PLUGIN

.include "../qmmp/options.qmake.mk"

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

CONFLICTS=	${PORTNAME}-qt4-0.*

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -exec ${STRIP_CMD} {} +

.include <bsd.port.mk>
