# New ports collection makefile for:	wildmidi
# Date created:				02 Aug 2010
# Whom:					SimaMoto,RyoTa <liangtai.s4@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	wildmidi
PORTVERSION=	0.2.3.4
CATEGORIES=	audio
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}

MAINTAINER=	liangtai.s4@gmail.com
COMMENT=	A simple software midi player and a core softsynth library

# player: GPLv3, library: LGPL3
LICENSE_COMB=	multi
LICENSE=	GPLv3 LGPL3

USE_GZIP=	yes
USE_GMAKE=	yes
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

MAN1=		wildmidi.1
MAN3=		WildMidi_GetString.3 WildMidi_Init.3 WildMidi_MasterVolume.3 \
		WildMidi_Open.3 WildMidi_OpenBuffer.3 WildMidi_GetOutput.3 \
		WildMidi_SetOption.3 WildMidi_GetInfo.3 WildMidi_FastSeek.3 \
		WildMidi_Close.3 WildMidi_Shutdown.3
MAN5=		wildmidi.cfg.5
PLIST_FILES=	bin/wildmidi include/wildmidi_lib.h \
		lib/libWildMidi.la lib/libWildMidi.so.1 lib/libWildMidi.so

post-patch:
		${REINPLACE_CMD} 's@/etc/@${DATADIR}/@' \
			${WRKSRC}/docs/wildmidi.1 \
			${WRKSRC}/docs/wildmidi.cfg.5
		${REINPLACE_CMD} 's@/usr/local/share/wildmidi/@${DATADIR}/@' \
			${WRKSRC}/configure

.include <bsd.port.mk>
