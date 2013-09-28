# $FreeBSD$

PORTNAME=	wildmidi
PORTVERSION=	0.2.3.5
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Simple software midi player and core softsynth library

# player: GPLv3, library: LGPL3
LICENSE=	GPLv3 LGPL3
LICENSE_COMB=	multi

MAKE_JOBS_UNSAFE=	yes

USES=		gmake
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

.ifndef(USE_GCC)
CONFIGURE_ARGS+=	--disable-optimize
.endif

post-patch:
		${REINPLACE_CMD} 's@/etc/@${DATADIR}/@' \
			${WRKSRC}/docs/wildmidi.1 \
			${WRKSRC}/docs/wildmidi.cfg.5
		${REINPLACE_CMD} -e 's@/usr/local/share/wildmidi/@${DATADIR}/@' \
			-e 's@default_timifityconf@default_wildmidiconf@' \
			${WRKSRC}/configure
		${REINPLACE_CMD} -e '/WM_MixerOptions/s/ \&\& / \& /' \
			${WRKSRC}/src/wildmidi_lib.c

.include <bsd.port.mk>
