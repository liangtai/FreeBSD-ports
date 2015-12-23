# $FreeBSD$

PORTNAME=	qmmp-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so.0:${PORTSDIR}/multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-lib

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|\$${LIB_DIR}|libdata|' \
		-e '/^add_dependencies/d'
	@${GREP} -El 'add_subdirectory[(]src/(app|qmmp|plugins)[)]'
		${WRKSRC}/CMakeLists.txt | ${XARGS} ${REINPLACE_CMD} \
		-Ee '/add_subdirectory[(]src\/(app|qmmp|plugins)[)]/d'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
