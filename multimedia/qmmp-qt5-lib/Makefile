# $FreeBSD$

PORTNAME=	qmmp-qt5-lib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Core library of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS
PORTDOCS=	README README.RUS AUTHORS
DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-qt5-lib//}

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

pre-configure:
	@${GREP} -H '^SUBDIRS' ${WRKSRC}/qmmp.pro \
		| ${SED} -e 's/= src\// src-/' | ${GREP} 'src/' \
		| ${CUT} -d: -f1 | uniq | ${XARGS} ${REINPLACE_CMD} \
		-e '/^SUBDIRS/s/=.*$$/=	src\/qmmp/'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmp/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.coresys"
.include <bsd.port.mk>
