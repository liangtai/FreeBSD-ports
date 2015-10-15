# $FreeBSD$

PORTNAME=	qmmp-qt4-lib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Core library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS
PORTDOCS=	README README.RUS AUTHORS
DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-lib//}

.include <bsd.port.options.mk>

QTVER=	-qt4
PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//} QTVER=${QTVER}
DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}${QTVER}

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

post-extract:
	@cd ${WRKSRC}/src && ${LN} -sf qmmp/ qmmp${QTVER}

pre-configure:
	@${GREP} -H '^SUBDIRS' ${WRKSRC}/qmmp.pro \
		| ${SED} -e 's/= src\// src-/' | ${GREP} 'src/' \
		| ${CUT} -d: -f1 | uniq | ${XARGS} ${REINPLACE_CMD} \
		-e '/^SUBDIRS/s/=.*$$/=	src\/qmmp/'
	@${GREP} -l 'include/qmmp$$' ${WRKSRC}/src/qmmp/qmmp.pro | ${XARGS}  \
		${REINPLACE_CMD} -e '/QMAKE_PKGCONFIG_DESCRIPTION/s/$$/ (Qt4)/' \
		-e 's/QMAKE_PKGCONFIG_NAME = qmmp$$/&${QTVER}/' \
		-Ee '/(TARGET|devel\.path) =/s/qmmp$$/&${QTVER}/'
	@${GREP} -lE 'lqmmp[^-0]|lqmmp$$' ${WRKSRC}/src/qmmp/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/target\.path/s|/qmmp/|/qmmp${QTVER}/|' \
		-Ee 's/-lqmmp($$| )/-lqmmp${QTVER}\1/g'
	@${GREP} -l '\"/qmmp\"' ${WRKSRC}/src/qmmp/qmmp.cpp | ${XARGS} \
		${REINPLACE_CMD} -e '/LIB_DIR/s|/qmmp|&${QTVER}|'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmp/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

pre-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
