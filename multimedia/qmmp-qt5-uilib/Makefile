# $FreeBSD$

PORTNAME=	qmmp-qt5-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:multimedia/qmmp-qt5-lib
BUILD_DEPENDS+=	qmmp-qt5-lib>=1.2.0:multimedia/qmmp-qt5-lib

USE_QT5+=	network linguisttools_build

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

pre-configure:
	@${GREP} -l '^SUBDIRS = src/qmmp src/' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s|=.*$$|=	src/qmmpui|'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmpui/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.coresys"
.include <bsd.port.mk>
