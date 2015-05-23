# $FreeBSD$

PORTNAME=	qmmp-uilib
CATEGORIES=	multimedia

COMMENT=	UI library of the QMMP Qt4-based multimedia player

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-lib

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

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.core"
