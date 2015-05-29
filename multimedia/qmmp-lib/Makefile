# $FreeBSD$

PORTNAME=	qmmp-lib
CATEGORIES=	multimedia

COMMENT=	core library of the QMMP Qt4-based multimedia player

OPTIONS_DEFINE=	DOCS
PORTDOCS=	README README.RUS AUTHORS
DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-lib//}

.include <bsd.port.options.mk>

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -H '^SUBDIRS' ${WRKSRC}/qmmp.pro \
		| ${SED} -e 's/= src\// src-/' | ${GREP} 'src/' \
		| ${CUT} -d: -f1 | uniq | ${XARGS} ${REINPLACE_CMD} \
		-e '/^SUBDIRS/s/=.*$$/=	src\/qmmp/'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmp/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.core"
