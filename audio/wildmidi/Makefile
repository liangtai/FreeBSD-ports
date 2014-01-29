# $FreeBSD$

PORTNAME=	wildmidi
PORTVERSION=	0.3.2
CATEGORIES=	audio

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Simple software midi player and core softsynth library

# player: GPLv3, library: LGPL3
LICENSE=	LGPL3

USE_GITHUB=	yes
GH_ACCOUNT=	psi29a
GH_PROJECT=	wildmidi
GH_TAGNAME=	${PORTNAME}-${PORTVERSION}
GH_COMMIT=	1525eab
USES=		gmake cmake:outsource
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_SINGLE=	BACKEND
OPTIONS_SINGLE_BACKEND=	ALSA OSS
OPTIONS_DEFINE=	PLAYER STATIC
OPTIONS_DEFAULT=	ALSA PLAYER

.include <bsd.port.options.mk>

ALSA_LIB_DEPENDS=	libasound.so:${PORTSDIR}/audio/alsa-lib
ALSA_CMAKE_ON=	-DWANT_ALSA:BOOL=ON
ALSA_CMAKE_OFF=	-DWANT_ALSA:BOOL=OFF

OSS_CMAKE_ON=	-DWANT_OSS:BOOL=ON
OSS_CMAKE_OFF=	-DWANT_OSS:BOOL=OFF

STATIC_CMAKE_ON=	-DWANT_STATIC:BOOL=ON
STATIC_CMAKE_OFF=	-DWANT_STATIC:BOOL=OFF

PLAYER_DESC=	Build and install simple player
PLAYER_CMAKE_ON=	-DWANT_PLAYER:BOOL=ON
PLAYER_CMAKE_OFF=	-DWANT_PLAYER:BOOL=OFF
.if ${PORT_OPTIONS:MPLAYER}
LICENSE+=	GPLv3
LICENSE_COMB=	multi
.endif

post-patch:
	@${REINPLACE_CMD} -e "/${LOCALBASE:S/\//\\\//g}/t" \
		-e "1{; s|/usr/share/midi/freepats|${LOCALBASE}/share/freepats|;" \
		-e "h; x; s|^|# |; s|freepats|guspat|; H; s|guspat|eawpats|; H;" \
		-e "s|eawpats|eawplus|; H; x;}" \
		${WRKSRC}/cfg/wildmidi.cfg
	@${REINPLACE_CMD} -e 's@/etc/wildmidi/@${DATADIR}/@' \
		-e 's@/etc/@${DATADIR}/@' \
		${WRKSRC}/docs/man/man1/wildmidi.1 \
		${WRKSRC}/docs/man/man5/wildmidi.cfg.5 \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} '/INSTALL/s@share/man@man@' \
		${WRKSRC}/src/CMakeLists.txt

pre-install:
	@${RM} -f ${WRKSRC}/docs/man/man1/wildmidi.1${REINPLACE_ARGS:S/-i//} \
		${WRKSRC}/docs/man/man5/wildmidi.cfg.5${REINPLACE_ARGS:S/-i//}
	${MKDIR} ${STAGEDIR}${DATADIR} ; \
	${CP} ${WRKSRC}/cfg/wildmidi.cfg ${STAGEDIR}${DATADIR}/wildmidi.cfg.sample

.include <bsd.port.mk>
