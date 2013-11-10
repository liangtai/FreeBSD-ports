# $FreeBSD$

PORTNAME=	opusfile
PORTVERSION=	0.4
CATEGORIES=	audio
MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		${MASTER_SITE_MOZILLA_EXTENDED}
MASTER_SITE_SUBDIR=	opus

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Opus playback library

LICENSE=	BSD

LIB_DEPENDS=	libogg.so:${PORTSDIR}/audio/libogg \
		libopus.so:${PORTSDIR}/audio/opus

USES=		gmake pkgconfig pathfix
USE_GZIP=	yes
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
USE_AUTOTOOLS=	autoconf:env aclocal:env automake:env libtool
PATCH_STRIP=	-p1
MAKE_JOBS_UNSAFE=	yes

OPTIONS_DEFINE=	DOXYGEN DOCS
OPTIONS_DEFAULT=

DOXYGEN_CONFIGURE_ENABLE=doc
DOXYGEN_BUILD_DEPENDS=	doxygen:${PORTSDIR}/devel/doxygen

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MDOCS}
DIST_DOCS=	AUTHORS README.txt
.endif

post-patch:
	@${REINPLACE_CMD} -e 's| @openssl@||' \
		${WRKSRC}/opusfile.pc.in  ${WRKSRC}/opusurl.pc.in
	@${REINPLACE_CMD} -e '/libopusurl_la_SOURCES/s/http.c/& src\/ftime.c/' \
		-e 's|^\(pkgconfigdir =\).*|\1 ${PREFIX}/libdata/pkgconfig|' \
		${WRKSRC}/Makefile.am
	@${CP} ${FILESDIR}/ftime.c ${WRKSRC}/src/

pre-configure:
	@${REINPLACE_CMD} -e 's|^\(dist_doc_DATA =\).*|\1 ${DIST_DOCS}|' \
		${WRKSRC}/Makefile.am
	@(cd ${WRKSRC} && ${AUTORECONF} -fi)

post-install:
.if ${PORT_OPTIONS:MDOXYGEN}
	@${RM} -f ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type f | \
		${SED} 's|${STAGEDIR}${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type d | \
		${SED} 's|${STAGEDIR}${PREFIX}/|@dirrm |' \
		| ${SORT} -r >> ${WRKDIR}/PLIST.doc ; \
	(cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST})
.endif

.include <bsd.port.post.mk>
