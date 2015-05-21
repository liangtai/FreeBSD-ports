# $FreeBSD$

PORTNAME=	qmmp-uilib
CATEGORIES=	multimedia

COMMENT=	UI library of the QMMP Qt4-based multimedia player

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp>=0.8.0:${PORTSDIR}/multimedia/qmmp-lib

CMAKE_ARGS+=	-DUSE_RPATH:BOOL=TRUE -DUSE_FFMPEG_LEGACY:BOOL=FALSE
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_DIR}|libdata|'
	@${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmp|plugins)[)]/d' \
		${WRKSRC}/CMakeLists.txt

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.core"
