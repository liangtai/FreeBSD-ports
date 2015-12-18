# $FreeBSD$

PORTNAME=	qmmp-qt4-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-qt4-lib
BUILD_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

pre-configure:
	@${GREP} -l '^SUBDIRS= src/qmmp src/' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s/=.*$$/=	src\/qmmpui/'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmpui/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
