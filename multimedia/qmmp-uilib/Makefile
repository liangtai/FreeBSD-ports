# $FreeBSD$

PORTNAME=	qmmp-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so.0:multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp-lib>=0.12.0:multimedia/qmmp-lib

USE_QT4+=	network linguisttools_build uic_build

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -El 'LIB_DIR}/pkgconfig|add_dep|target_link_.*libqmmp' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|\$${LIB_DIR}|libdata|' \
		-e '/^add_dependencies/d' \
		-e '/target_link_libraries/s/libqmmp/-lqmmp/'
	@${GREP} -El 'add_subd.*src/(app|qmmp|plugins)[)]' \
		${WRKSRC}/CMakeLists.txt | ${XARGS} ${REINPLACE_CMD} \
		-Ee '/add_subdirectory[(]src\/(app|qmmp|plugins)[)]/d'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
