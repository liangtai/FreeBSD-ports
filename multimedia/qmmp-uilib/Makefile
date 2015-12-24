# $FreeBSD$

PORTNAME=	qmmp-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp-lib>=1.1.0:${PORTSDIR}/multimedia/qmmp-lib

USE_QT5+=	network linguisttools_build

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_DIR}|libdata|' \
		-e '/^add_dependencies/d'
	@${GREP} -El 'add_subd.*src/(qmmp|app|plugins)[)]|find_package.* REQUIRED' \
		${WRKSRC}/CMakeLists.txt | ${XARGS} ${REINPLACE_CMD} \
		-Ee '/add_subdirectory[(]src\/(qmmp|app|plugins)[)]/d' \
		-e '/find_package[(]Qt5/s/ REQUIRED//'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
