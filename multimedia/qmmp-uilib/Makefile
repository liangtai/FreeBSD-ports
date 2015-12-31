# $FreeBSD$

PORTNAME=	qmmp-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-lib
BUILD_DEPENDS+=	qmmp-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-lib

USE_QT4+=	network uic_build

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

pre-configure:
	@${GREP} -l '^SUBDIRS= src/qmmp src/' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s/=.*$$/=	src\/qmmpui/'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmpui/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
