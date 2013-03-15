# $FreeBSD$

PORTNAME=	opusfile
PORTVERSION=	0.2
CATEGORIES=	audio
MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
	${MASTER_SITE_MOZILLA_EXTENDED}
MASTER_SITE_SUBDIR=	opus

MAINTAINER=	liangtai.s4@gmail.com
COMMENT=	Opus playback library

LICENSE=	BSD

LIB_DEPENDS=	ogg:${PORTSDIR}/audio/libogg \
			opus:${PORTSDIR}/audio/opus

USE_GZIP=	yes
USE_GMAKE=	yes
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
USE_PKGCONFIG=	yes
USE_AUTOTOOLS=	autoconf:env aclocal:env automake:env libtool
PATCH_STRIP=	-p1
MAKE_JOBS_UNSAFE=	yes

OPTIONS_DEFINE=	APIDOC DOCS
OPTIONS_DEFAULT=
APIDOC_DESC=	Install Doxygen generated doc (libopusfile)

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MAPIDOC}
CONFIGURE_ARGS+=	--enable-doc
BUILD_DEPENDS+=	doxygen:${PORTSDIR}/devel/doxygen
.else
CONFIGURE_ARGS+=	--disable-doc
.endif

.if ${PORT_OPTIONS:MDOCS}
DIST_DOCS=	AUTHORS README.txt
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|^\(dist_doc_DATA =\).*|\1 ${DIST_DOCS}|' \
		-e 's|^\(pkgconfigdir =\).*|\1 ${PREFIX}/libdata/pkgconfig|' \
		${WRKSRC}/Makefile.am
	@${REINPLACE_CMD} -e 's|%%PACKAGE_VERSION%%|${PORTVERSION}|' \
		${WRKSRC}/configure.ac

pre-configure:
	@(cd ${WRKSRC} && ${AUTORECONF} -fi)

post-install:
.if ${PORT_OPTIONS:MAPIDOC}
	@${RM} -f ${WRKDIR}/PLIST.doc ; \
	@${FIND} ${DOCSDIR}/html -type f | ${SED} 's|${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	@${FIND} ${DOCSDIR}/html -type d | ${SED} 's|${PREFIX}/|@dirrm |' \
		| ${SORT} -r >> ${WRKDIR}/PLIST.doc ; \
	@(cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST})
.endif

.include <bsd.port.mk>
