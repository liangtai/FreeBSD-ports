# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	0.7.3
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
		${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	A Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS=	libmad.so:${PORTSDIR}/audio/libmad \
		libsndfile.so:${PORTSDIR}/audio/libsndfile \
		libogg.so:${PORTSDIR}/audio/libogg \
		libvorbis.so:${PORTSDIR}/audio/libvorbis \
		libwavpack.so:${PORTSDIR}/audio/wavpack \
		libtag.so:${PORTSDIR}/audio/taglib \
		libcurl.so:${PORTSDIR}/ftp/curl \
		libmms.so:${PORTSDIR}/net/libmms

USES=		pkgconfig
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_QT4=	corelib gui network xml dbus \
		qmake_build rcc_build uic_build moc_build linguist_build
USE_LDCONFIG=	yes

OPTIONS_SINGLE=	FFMPEG MPLAYER
OPTIONS_SINGLE_FFMPEG=	FFMPEG1 FFMPEGDEVEL FFMPEG2
OPTIONS_SINGLE_MPLAYER=	MPLAYER1 MPLAYER2
OPTIONS_DEFINE=	ALSA APIDOC BS2B CDIO DOCS ENCA FAAD FFMPEG \
		FFMPEG_LEGACY FLAC GME HAL JACK LADSPA MODPLUG MPLAYER \
		MUSEPACK OSS OSS4 PROJECTM PULSEAUDIO SKINNEDUI \
		UDISKS UDISKS2 WILDMIDI
OPTIONS_DEFAULT= ALSA BS2B CDIO ENCA FAAD FFMPEG FFMPEG1 \
		FLAC GME JACK HAL LADSPA MODPLUG MPLAYER MPLAYER1 \
		MUSEPACK OSS4 PROJECTM PULSEAUDIO SKINNEDUI \
		UDISKS2 WILDMIDI
APIDOC_DESC=	Doxygen generated doc (libqmmp libqmmpui)
BS2B_DESC=	Support the Bauer stereophonic2binaural effect
CDIO_DESC=	Support to playback compact discs
ENCA_DESC=	Support automatic character set detection
OPUS_DESC=	Enable reading opusfile tags
GME_DESC=	Support video game music files
OSS4_DESC=	Open Sound System (ver4) support
PROJECTM_DESC=	Support the projectM music visualiser
SKINNEDUI_DESC=	Skinned GUI
WILDMIDI_DESC=	Support to playback MIDI files
UDISKS_DESC=	Support removable disc detection using UDisks
UDISKS2_DESC=	Support removable disc detection using UDisks
FFMPEG_LEGACY_DESC=	FFmpeg (ver0.6 - ver0.8) support
FFMPEG2_DESC=	ffmpeg-2.x (multimedia/ffmpeg)
FFMPEG1_DESC=	ffmpeg-1.x (multimedia/ffmpeg1)
FFMPEGDEVEL_DESC=	ffmpeg-devel (multimedia/ffmpeg-devel)
MPLAYER1_DESC=	mplayer-1.1.x (multimedia/mplayer)
MPLAYER2_DESC=	mplayer-2.0.x (multimedia/mplayer2)

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MAPIDOC}
BUILD_DEPENDS+=	doxygen:${PORTSDIR}/devel/doxygen
.endif

.if ${PORT_OPTIONS:MSKINNEDUI}
PLIST_SUB+=	SKINNEDUI=""
PLUGIN_OPTIONS+=	WITH_SKINNED
.else
PLIST_SUB+=	SKINNEDUI="@comment "
.endif

.if ${PORT_OPTIONS:MJACK}
PLIST_SUB+=	JACK=""
BUILD_DEPENDS+=	jackit>=0.121.2:${PORTSDIR}/audio/jack
LIB_DEPENDS+=	libjack.so:${PORTSDIR}/audio/jack
PLUGIN_OPTIONS+=	JACK_PLUGIN
.else
PLIST_SUB+=	JACK="@comment "
.endif

.if ${PORT_OPTIONS:MALSA}
PLIST_SUB+=	ALSA=""
LIB_DEPENDS+=	libasound.so:${PORTSDIR}/audio/alsa-lib
PLUGIN_OPTIONS+=	ALSA_PLUGIN
.else
PLIST_SUB+=	ALSA="@comment "
.endif

.if ${PORT_OPTIONS:MBS2B}
PLIST_SUB+=	BS2B=""
LIB_DEPENDS+=	libbs2b.so:${PORTSDIR}/audio/libbs2b
PLUGIN_OPTIONS+=	BS2B_PLUGIN
.else
PLIST_SUB+=	BS2B="@comment "
.endif

.if ${PORT_OPTIONS:MPULSEAUDIO}
PLIST_SUB+=	PULSE_AUDIO=""
LIB_DEPENDS+=	libpulse.so:${PORTSDIR}/audio/pulseaudio
PLUGIN_OPTIONS+=	PULSE_AUDIO_PLUGIN
.else
PLIST_SUB+=	PULSE_AUDIO="@comment "
.endif

.if ${PORT_OPTIONS:MFLAC}
PLIST_SUB+=	FLAC=""
LIB_DEPENDS+=	libFLAC.so:${PORTSDIR}/audio/flac
PLUGIN_OPTIONS+=	FLAC_PLUGIN
.else
PLIST_SUB+=	FLAC="@comment "
.endif

.if ${PORT_OPTIONS:MMUSEPACK}
PLIST_SUB+=	MUSEPACK=""
LIB_DEPENDS+=	libmpcdec.so:${PORTSDIR}/audio/musepack
PLUGIN_OPTIONS+=	MUSEPACK_PLUGIN
.else
PLIST_SUB+=	MUSEPACK="@comment "
.endif

.if ${PORT_OPTIONS:MGME}
PLIST_SUB+=	GME=""
LIB_DEPENDS+=	libgme.so:${PORTSDIR}/audio/libgme
PLUGIN_OPTIONS+=	GME_PLUGIN
.else
PLIST_SUB+=	GME="@comment "
.endif

.if ${PORT_OPTIONS:MOPUS}
PLIST_SUB+=	OPUS=""
LIB_DEPENDS+=	libopusfile.so:${PORTSDIR}/audio/opusfile
PLUGIN_OPTIONS+=	OPUS_PLUGIN
.else
PLIST_SUB+=	OPUS="@comment "
.endif

.if ${PORT_OPTIONS:MFFMPEG_LEGACY}
FFMPEG_SUFFIX=	0
LIB_DEPENDS+=	libavcodec0.so:${PORTSDIR}/multimedia/ffmpeg0
PLIST_SUB+=	FFMPEG_LEGACY=""
PLUGIN_OPTIONS+=	FFMPEG_LEGACY
.else
PLIST_SUB+=	FFMPEG_LEGACY="@comment "
.endif

.if ${PORT_OPTIONS:MFFMPEG}
. if ${PORT_OPTIONS:MFFMPEGDEVEL}
FFMPEG_SUFFIX=	-devel
LIB_DEPENDS+=	libavcodec-devel.so:${PORTSDIR}/multimedia/ffmpeg-devel
. else
.  if ${PORT_OPTIONS:MFFMPEG2}
FFMPEG_SUFFIX=
LIB_DEPENDS+=	libavcodec.so:${PORTSDIR}/multimedia/ffmpeg
.  else # ${PORT_OPTIONS:MFFMPEG1}
FFMPEG_SUFFIX=	1
LIB_DEPENDS+=	libavcodec1.so:${PORTSDIR}/multimedia/ffmpeg1
.  endif
. endif
 PLIST_SUB+=	FFMPEG=""
PLIST_SUB+=	FFMPEG=""
PLUGIN_OPTIONS+=	FFMPEG_PLUGIN
.else
PLIST_SUB+=	FFMPEG="@comment "
.endif

.if ${PORT_OPTIONS:MMODPLUG}
PLIST_SUB+=	MODPLUG=""
LIB_DEPENDS+=	libmodplug.so:${PORTSDIR}/audio/libmodplug
PLUGIN_OPTIONS+=	MODPLUG_PLUGIN
.else
PLIST_SUB+=	MODPLUG="@comment "
.endif

.if ${PORT_OPTIONS:MFAAD}
PLIST_SUB+=	FAAD=""
LIB_DEPENDS+=	libfaad.so:${PORTSDIR}/audio/faad
PLUGIN_OPTIONS+=	AAC_PLUGIN
.else
PLIST_SUB+=	FAAD="@comment "
.endif

.if ${PORT_OPTIONS:MCDIO}
PLIST_SUB+=	CDIO=""
LIB_DEPENDS+=	libcdio.so:${PORTSDIR}/sysutils/libcdio
PLUGIN_OPTIONS+=	CDAUDIO_PLUGIN
.else
PLIST_SUB+=	CDIO="@comment "
.endif

.if exists(${LOCALBASE}/include/enca.h) || ${PORT_OPTIONS:MENCA}
PLIST_SUB+=	ENCA=""
LIB_DEPENDS+=	libenca.so:${PORTSDIR}/converters/enca
PLUGIN_OPTIONS+=	WITH_ENCA
.else
PLIST_SUB+=	ENCA="@comment "
.endif

.if ${PORT_OPTIONS:MMPLAYER}
. if ${PORT_OPTIONS:MMPLAYER2}
RUN_DEPENDS+=	mplayer:${PORTSDIR}/multimedia/mplayer2
. else
RUN_DEPENDS+=	mplayer:${PORTSDIR}/multimedia/mplayer
. endif
PLIST_SUB+=	MPLAYER=""
PLUGIN_OPTIONS+=	MPLAYER_PLUGIN
.else
PLIST_SUB+=	MPLAYER="@comment "
.endif

.if ${PORT_OPTIONS:MPROJECTM}
PLIST_SUB+=	PROJECTM=""
USE_QT4+=	opengl
LIB_DEPENDS+=	libprojectM.so.2:${PORTSDIR}/graphics/libprojectm
PLUGIN_OPTIONS+=	PROJECTM_PLUGIN WITH_PROJECTM20
.else
PLIST_SUB+=	PROJECTM="@comment "
.endif

.if ${PORT_OPTIONS:MOSS}
PLIST_SUB+=	OSS=""
PLUGIN_OPTIONS+=	OSS_PLUGIN
.else
PLIST_SUB+=	OSS="@comment "
.endif

.if ${PORT_OPTIONS:MOSS4}
PLIST_SUB+=	OSS4=""
BUILD_DEPENDS+=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss
PLUGIN_OPTIONS+=	OSS4_PLUGIN
.else
PLIST_SUB+=	OSS4="@comment "
.endif

.if ${PORT_OPTIONS:MLADSPA}
PLIST_SUB+=	LADSPA=""
RUN_DEPENDS+=	analyseplugin:${PORTSDIR}/audio/ladspa
PLUGIN_OPTIONS+=	LADSPA_PLUGIN
.else
PLIST_SUB+=	LADSPA="@comment "
.endif

.if ${PORT_OPTIONS:MHAL}
PLIST_SUB+=	HAL=""
LIB_DEPENDS+=	libhal.so:${PORTSDIR}/sysutils/hal
PLUGIN_OPTIONS+=	HAL_PLUGIN
.else
PLIST_SUB+=	HAL="@comment "
.endif

.if ${PORT_OPTIONS:MUDISKS}
PLIST_SUB+=	UDISKS=""
PLUGIN_OPTIONS+=	UDISKS_PLUGIN
.else
PLIST_SUB+=	UDISKS="@comment "
.endif

.if ${PORT_OPTIONS:MUDISKS2}
PLIST_SUB+=	UDISKS2=""
PLUGIN_OPTIONS+=	UDISKS2_PLUGIN
.else
PLIST_SUB+=	UDISKS2="@comment "
.endif

.if ${PORT_OPTIONS:MWILDMIDI}
PLIST_SUB+=	WILDMIDI=""
LIB_DEPENDS+=	libWildMidi.so:${PORTSDIR}/audio/wildmidi
PLUGIN_OPTIONS+=	WILDMIDI_PLUGIN
.else
PLIST_SUB+=	WILDMIDI="@comment "
.endif

PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//}

PORTDOCS=	README README.RUS AUTHORS
INSTALLS_ICONS=	yes

QMAKE_ARGS+=	CONFIG+="${PLUGIN_OPTIONS}" PREFIX=${PREFIX}
MAKE_ENV+=	INSTALL_ROOT=${PREFIX}

post-patch:
	@${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |' \
		${WRKSRC}/qmmp.pri
	@${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro

pre-configure:
	@${REINPLACE_CMD} -E -e '/PKGCONFIG/ { \
	s/(libavcodec|libavformat|libavutil)[^[:space:]]*/\1${FFMPEG_SUFFIX} /g; }' \
		${WRKSRC}/src/plugins/Input/ffmpeg/ffmpeg.pro
	@${RM} -rf ${WRKSRC}/src/plugins/Input/ffmpeg/.build \
		${WRKSRC}/lib/qmmp/Input/libffmpeg.so
	@${FIND} ${WRKSRC} -name Makefile -delete

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKE_ARGS}

post-build:
	@${REINPLACE_CMD} -e \
	's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)/|\1/libdata/\2/|' \
		${WRKSRC}/src/qmmp/Makefile ${WRKSRC}/src/qmmpui/Makefile
.if ${PORT_OPTIONS:MAPIDOC}
	cd ${WRKSRC}/doc && doxygen Doxyfile
.endif

pre-install:
.if ${PORT_OPTIONS:MSKINNEDUI}
	${STRIP_CMD} ${WRKSRC}/bin/qmmp
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MAPIDOC}
	${MKDIR} ${STAGEDIR}${DOCSDIR}/html/search ; \
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
