# $FreeBSD$

PORTNAME=	qmmp-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp-lib>=0.8.0:${PORTSDIR}/multimedia/qmmp-lib

CMAKE_ARGS+=	-DUSE_RPATH:BOOL=TRUE -DUSE_FFMPEG_LEGACY:BOOL=FALSE
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_DIR}|libdata|' \
		-e '/^add_dependencies/d'
	@${GREP} 'add_subdirectory' ${WRKSRC}/CMakeLists.txt | \
		${GREP} -v 'src/qmmpui' | cut -d: -f1 | ${XARGS} \
		${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmp|plugins)[)]/d'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
