# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	1.2.0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/${PORTNAME}/
PKGNAMESUFFIX=	-qt5

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP (Qt5)

LICENSE=	GPLv2

CONFLICTS=	${PORTNAME}-0.*
PORTSCOUT=	limit:^1\..*

LIB_DEPENDS=	libqmmpui.so:multimedia/qmmp-qt5
BUILD_DEPENDS=	qmmp-qt5>=1.2.0:multimedia/qmmp-qt5

USES=		gmake pkgconfig qmake tar:bzip2
USE_QT5=	core gui widgets \
		buildtools_build linguisttools_build qmake_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP GOOM MPG123 SRCONV XMP
OPTIONS_DEFAULT=	FFAP GOOM MPG123 SRCONV XMP
OPTIONS_DEFINE_i386=	FFAPASM GOOMASM
OPTIONS_DEFAULT_i386=	FFAPASM GOOMASM
OPTIONS_DEFINE_amd64=	FFAPASM GOOMASM
OPTIONS_DEFAULT_amd64=	FFAPASM GOOMASM

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:audio/taglib
FFAP_QMAKE_CONFIG=	FFAP_PLUGIN
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:devel/yasm
FFAPASM_QMAKE_CONFIG=	FFAP_YASM

GOOM_DESC=	Goom spectacle
GOOM_QMAKE_CONFIG=	GOOM_PLUGIN
GOOMASM_DESC=	Optimize Goom spectacle using devel/yasm
GOOMASM_BUILD_DEPENDS=	yasm:devel/yasm
GOOMASM_QMAKE_CONFIG=	GOOM_ASM

MPG123_LIB_DEPENDS=	libmpg123.so:audio/mpg123 \
		libtag.so:audio/taglib
MPG123_QMAKE_CONFIG=	MPG123_PLUGIN

SRCONV_DESC=	Support the sample rate converter
SRCONV_LIB_DEPENDS=	libsamplerate.so:audio/libsamplerate
SRCONV_QMAKE_CONFIG=	SRC_PLUGIN

XMP_DESC=		Support various module formats using libxmp
XMP_LIB_DEPENDS=	libxmp.so:audio/libxmp
XMP_QMAKE_CONFIG=	XMP_PLUGIN

.include <bsd.port.options.mk>
.include "${.CURDIR}/../qmmp-qt5/options.qmake.mk"

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

# For CLang, avoid to pass '-isystem /usr/include' to INCPATH.
post-patch:
	@${GREP} -l '/usr/include' ${WRKSRC}/qmmp-plugin-pack.pri | ${XARGS} \
		${REINPLACE_CMD} -e '/\/usr\/include/d'

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -exec ${STRIP_CMD} {} +

.include <bsd.port.mk>
