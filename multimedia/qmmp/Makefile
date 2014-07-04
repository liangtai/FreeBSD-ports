# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	0.8.0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS=	libmad.so:${PORTSDIR}/audio/libmad \
		libsndfile.so:${PORTSDIR}/audio/libsndfile \
		libogg.so:${PORTSDIR}/audio/libogg \
		libvorbis.so:${PORTSDIR}/audio/libvorbis \
		libwavpack.so:${PORTSDIR}/audio/wavpack \
		libtag.so:${PORTSDIR}/audio/taglib \
		libcurl.so:${PORTSDIR}/ftp/curl \
		libmms.so:${PORTSDIR}/net/libmms

USES=		pkgconfig qmake gmake tar:bzip2
USE_QT4=	corelib gui network xml dbus \
		qmake_build rcc_build uic_build moc_build linguist_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_SINGLE=	MPLAYER
OPTIONS_SINGLE_MPLAYER=	MPLAYER1 MPLAYER2
OPTIONS_DEFINE=	ALSA DOXYGEN BS2B CDIO DOCS ENCA FAAD FFMPEG \
		FLAC GME HAL JACK LADSPA MODPLUG MPLAYER \
		MUSEPACK OSS OSS4 PROJECTM PULSEAUDIO SID SKINNEDUI \
		UDISKS UDISKS2 WILDMIDI
OPTIONS_DEFAULT= ALSA BS2B CDIO ENCA FAAD FFMPEG \
		FLAC GME JACK HAL LADSPA MODPLUG MPLAYER MPLAYER1 \
		MUSEPACK OSS4 PROJECTM PULSEAUDIO SID SKINNEDUI \
		UDISKS2 WILDMIDI

DOXYGEN_BUILD_DEPENDS=	doxygen:${PORTSDIR}/devel/doxygen

SKINNEDUI_DESC=	Skinned GUI
SKINNEDUI_QMAKE_CONFIG=	WITH_SKINNED

JACK_BUILD_DEPENDS=	jackit>=0.121.2:${PORTSDIR}/audio/jack
JACK_LIB_DEPENDS=	libjack.so:${PORTSDIR}/audio/jack
JACK_QMAKE_CONFIG=	JACK_PLUGIN

ALSA_LIB_DEPENDS=	libasound.so:${PORTSDIR}/audio/alsa-lib
ALSA_QMAKE_CONFIG=	ALSA_PLUGIN

BS2B_DESC=	Support the Bauer stereophonic2binaural effect
BS2B_LIB_DEPENDS=	libbs2b.so:${PORTSDIR}/audio/libbs2b
BS2B_QMAKE_CONFIG=	BS2B_PLUGIN

PULSEAUDIO_LIB_DEPENDS=	libpulse.so:${PORTSDIR}/audio/pulseaudio
PULSEAUDIO_QMAKE_CONFIG=	PULSE_AUDIO_PLUGIN

FLAC_LIB_DEPENDS=	libFLAC.so:${PORTSDIR}/audio/flac
FLAC_QMAKE_CONFIG=	FLAC_PLUGIN

MUSEPACK_LIB_DEPENDS=	libmpcdec.so:${PORTSDIR}/audio/musepack
MUSEPACK_QMAKE_CONFIG=	MUSEPACK_PLUGIN

GME_DESC=	Support video game music files
GME_LIB_DEPENDS=	libgme.so:${PORTSDIR}/audio/libgme
GME_QMAKE_CONFIG=	GME_PLUGIN

OPUS_DESC=	Enable reading opusfile tags
OPUS_LIB_DEPENDS=	libopusfile.so:${PORTSDIR}/audio/opusfile
OPUS_QMAKE_CONFIG=	OPUS_PLUGIN

SID_DESC=	Support sid
SID_LIB_DEPENDS=	libsidplayfp.so:${PORTSDIR}/audio/libsidplayfp
SID_QMAKE_CONFIG=	SID_PLUGIN

FFMPEG_LIB_DEPENDS=	libavcodec.so:${PORTSDIR}/multimedia/ffmpeg
FFMPEG_QMAKE_CONFIG=	FFMPEG_PLUGIN

MODPLUG_LIB_DEPENDS=	libmodplug.so:${PORTSDIR}/audio/libmodplug
MODPLUG_QMAKE_CONFIG=	MODPLUG_PLUGIN

FAAD_LIB_DEPENDS=	libfaad.so:${PORTSDIR}/audio/faad
FAAD_QMAKE_CONFIG=	AAC_PLUGIN

CDIO_DESC=	Support to playback compact discs
CDIO_LIB_DEPENDS=	libcdio.so:${PORTSDIR}/sysutils/libcdio
CDIO_QMAKE_CONFIG=	CDAUDIO_PLUGIN

ENCA_DESC=	Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:${PORTSDIR}/converters/enca
ENCA_QMAKE_CONFIG=	WITH_ENCA

MPLAYER1_DESC=	mplayer-1.1.x (multimedia/mplayer)
MPLAYER2_DESC=	mplayer-2.0.x (multimedia/mplayer2)
MPLAYER1_RUN_DEPENDS=	mplayer:${PORTSDIR}/multimedia/mplayer
MPLAYER2_RUN_DEPENDS=	mplayer:${PORTSDIR}/multimedia/mplayer2
MPLAYER1_QMAKE_CONFIG=	MPLAYER_PLUGIN
MPLAYER2_QMAKE_CONFIG=	MPLAYER_PLUGIN

PROJECTM_DESC=	Support the projectM music visualiser
PROJECTM_LIB_DEPENDS=	libprojectM.so.2:${PORTSDIR}/graphics/libprojectm
PROJECTM_USE=	QT4=opengl
PROJECTM_QMAKE_CONFIG=	PROJECTM_PLUGIN WITH_PROJECTM20

OSS_QMAKE_CONFIG=	OSS_PLUGIN

OSS4_DESC=	Open Sound System (ver4) support
OSS4_BUILD_DEPENDS=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss
OSS4_QMAKE_CONFIG=	OSS4_PLUGIN

LADSPA_RUN_DEPENDS=	analyseplugin:${PORTSDIR}/audio/ladspa
LADSPA_QMAKE_CONFIG=	LADSPA_PLUGIN

HAL_LIB_DEPENDS=	libhal.so:${PORTSDIR}/sysutils/hal
HAL_QMAKE_CONFIG=	HAL_PLUGIN

UDISKS_DESC=	Support removable disc detection (obsolete)
UDISKS2_DESC=	Support removable disc detection using UDisks
UDISKS_QMAKE_CONFIG=	UDISKS_PLUGIN
UDISKS2_QMAKE_CONFIG=	UDISKS2_PLUGIN

WILDMIDI_DESC=	Support to playback MIDI files
WILDMIDI_LIB_DEPENDS=	libWildMidi.so:${PORTSDIR}/audio/wildmidi
WILDMIDI_QMAKE_CONFIG=	WILDMIDI_PLUGIN

.include <bsd.port.options.mk>
.include "options.qmake.mk"

PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//}

PORTDOCS=	README README.RUS AUTHORS
INSTALLS_ICONS=	yes

MAKE_ENV+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}
DESTDIRNAME=	_NO_USE_

post-patch:
	@${GREP} -l '^CONFIG' ${WRKSRC}/qmmp.pri | ${XARGS} \
		${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |'
	@${GREP} -EL '${LOCALBASE}/lib/oss/include|${LOCALBASE}/include' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'

post-build:
	@${GREP} -L 'libdata/pkgconfig'
		${WRKSRC}/src/qmmp/Makefile \
		${WRKSRC}/src/qmmpui/Makefile | ${XARGS} ${REINPLACE_CMD} -e \
		's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'
.if ${PORT_OPTIONS:MDOXYGEN}
	cd ${WRKSRC}/doc && doxygen Doxyfile
.endif

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -name 'lib*' -exec ${STRIP_CMD} {} +
.if ${PORT_OPTIONS:MSKINNEDUI}
	${STRIP_CMD} ${WRKSRC}/bin/qmmp
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MDOXYGEN}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/html/search ; \
	cd ${WRKSRC}/doc/html && \
		${INSTALL_MAN} *.html *.png *.css ${STAGEDIR}${DOCSDIR}/html ; \
	cd ${WRKSRC}/doc/html/search && \
		${INSTALL_MAN} *.html *.png *.css *.js ${STAGEDIR}${DOCSDIR}/html/search ; \
	${RM} -f ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type f | \
		${SED} 's|${STAGEDIR}${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type d | \
		${SED} 's|${STAGEDIR}${PREFIX}/|@dirrm |' \
		| ${SORT} -r >> ${WRKDIR}/PLIST.doc ; \
	cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST}
.endif

.include <bsd.port.mk>
