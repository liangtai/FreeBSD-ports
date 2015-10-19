# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.9.2
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/${PORTNAME}/
PKGNAMESUFFIX=	-qt4

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS=	libqmmpui${QTFOUR}.so:${PORTSDIR}/multimedia/qmmp-qt4
PKG_DEPENDS=	qmmp-qt4>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4
BUILD_DEPENDS=	qmmp-qt4>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4

USES=		cmake:outsource pkgconfig tar:bzip2
USE_QT4=	corelib gui linguisttools_build moc_build qmake_build rcc_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes

OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 XMP
OPTIONS_DEFAULT=	FFAP MPG123 XMP

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:${PORTSDIR}/audio/taglib
FFAP_CMAKE_ON=	-DUSE_FFAP:BOOL=TRUE
FFAP_CMAKE_OFF=	-DUSE_FFAP:BOOL=FALSE
OPTIONS_DEFINE_i386=	FFAPASM
OPTIONS_DEFAULT_i386=	FFAPASM
OPTIONS_DEFINE_amd64=	FFAPASM
OPTIONS_DEFAULT_amd64=	FFAPASM
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM_CMAKE_ON=	-DUSE_ASM:BOOL=TRUE
FFAPASM_CMAKE_OFF=	-DUSE_ASM:BOOL=FALSE

MPG123_LIB_DEPENDS=	libmpg123.so:${PORTSDIR}/audio/mpg123
MPG123_USE=	QT4=uic_build
MPG123_CMAKE_ON=	-DUSE_MPG123:BOOL=TRUE
MPG123_CMAKE_OFF=	-DUSE_MPG123:BOOL=FALSE

XMP_DESC=	Support various module formats using libxmp
XMP_LIB_DEPENDS=	libxmp.so:${PORTSDIR}/audio/libxmp
XMP_CMAKE_ON=	-DUSE_XMP:BOOL=TRUE
XMP_CMAKE_OFF=	-DUSE_XMP:BOOL=FALSE

CMAKE_ARGS+=	-DCMAKE_REQUIRED_INCLUDES:PATH=${LOCALBASE}/include
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.options.mk>

QTFOUR!=	pkg info -l qmmp-qt4-lib | \
	sed -n 's|^[    ]*/usr/local/lib/libqmmp\(.*\)\.so$$|\1|p'
.if !defined(QTFOUR) || "x" == "x${QTFOUR}"
CONFLICTS=	${PORTNAME:C/-qt4//}-1.*
.endif

PLIST_SUB+=	QTFOUR="${QTFOUR}"

post-patch:
.if defined(QTFOUR)
	# Append ${QTFOUR} at every file or path to avoid conflict with Qt5 qmmp
	@${FIND} ${WRKSRC} \( -type f -name '*.cpp' -o -type f -name '*.h' \) \
		-exec ${GREP} -l 'qmmp/' {} + | ${XARGS} \
		${REINPLACE_CMD} -e '/#include/s/qmmp\//qmmp${QTFOUR}\//'
	@${FIND} ${WRKSRC} -type f -name CMakeLists.txt \
		-exec ${GREP} -lE '/qmmp/|lqmmp(ui)?( |[)])' {} + | ${XARGS} \
		${REINPLACE_CMD} -e '/LIB_DIR/s/qmmp\//qmmp${QTFOUR}\//' \
		-Ee '/^target_link_libraries/s/lqmmp(ui)?( |[)])/lqmmp\1${QTFOUR}\2/g'
	@${GREP} -LEe 'qmmp(ui)?${QTFOUR}' ${WRKSRC}/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -Ee '/^pkg_check_modules/s/qmmp(ui)?>/qmmp\1${QTFOUR}>/'
.endif

pre-configure:
	@${RM} -f ${BUILD_WRKSRC}/CMakeCache.txt

.include <bsd.port.mk>
