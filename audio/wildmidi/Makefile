# $FreeBSD$

PORTNAME=	wildmidi
PORTVERSION=	0.3.1
CATEGORIES=	audio

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Simple software midi player and core softsynth library

# player: GPLv3, library: LGPL3
LICENSE=	GPLv3 LGPL3
LICENSE_COMB=	multi

USE_GITHUB=	yes
GH_ACCOUNT=	psi29a
GH_PROJECT=	wildmidi
GH_TAGNAME=	${PORTNAME}-${PORTVERSION}
GH_COMMIT=	483335e
USES=		gmake cmake:outsource
USE_LDCONFIG=	yes

LIB_DEPENDS=	libasound.so:${PORTSDIR}/audio/alsa-lib

.ifndef(USE_GCC)
CONFIGURE_ARGS+=	--disable-optimize
.endif

post-patch:
	@${REINPLACE_CMD} 's@/etc/@${DATADIR}/@' \
		${WRKSRC}/docs/man/man1/wildmidi.1 \
		${WRKSRC}/docs/man/man5/wildmidi.cfg.5 \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} '/INSTALL/s@share/man@man@' \
		${WRKSRC}/src/CMakeLists.txt

pre-install:
	@${RM} -f ${WRKSRC}/docs/man/man1/wildmidi.1${REINPLACE_ARGS:S/-i//} \
		${WRKSRC}/docs/man/man5/wildmidi.cfg.5${REINPLACE_ARGS:S/-i//}

.include <bsd.port.mk>
