# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	0.11.0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
	SF/qmmp-dev/${PORTNAME}/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Qt4-based multimedia player

LICENSE=	GPLv2

CONFLICTS=	${PORTNAME}-qt5-1.*
PORTSCOUT=	limit:^0.*

LIB_DEPENDS=	libmad.so:audio/libmad \
		libsndfile.so:audio/libsndfile \
		libogg.so:audio/libogg \
		libvorbis.so:audio/libvorbis \
		libwavpack.so:audio/wavpack \
		libtag.so:audio/taglib \
		libcurl.so:ftp/curl \
		libmms.so:net/libmms

USES=		desktop-file-utils gmake pkgconfig qmake tar:bzip2
USE_QT4=	corelib dbus gui network xml \
		linguisttools_build moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes
USE_XORG=	x11

OPTIONS_SUB=	yes
OPTIONS_GROUP=	DOCUMENTS PLUGIN_APPLICATION PLUGIN_FORMATS \
		PLUGIN_DSP_EFFECTS PLUGIN_VISUAL_EFFECTS PLUGIN_OUTPUT \
		PLUGIN_PLAYLIST MISC

PLUGIN_APPLICATION_DESC=	Main program view
OPTIONS_GROUP_PLUGIN_APPLICATION=	QSUI SKINNEDUI

DOCUMENTS_DESC=	Documentation and API Reference
OPTIONS_GROUP_DOCUMENTS=	DOCS DOXYGEN

PLUGIN_FORMATS_DESC=	Supports for various formats
OPTIONS_GROUP_PLUGIN_FORMATS=	ARCHIVE CDDA FAAD FFMPEG FLAC GME \
		MODPLUG MUSEPACK WILDMIDI OPUS

PLUGIN_DSP_EFFECTS_DESC=	DSP effects
OPTIONS_GROUP_PLUGIN_DSP_EFFECTS=	BS2B LADSPA SOXR

PLUGIN_VISUAL_EFFECTS_DESC=	Visual effects
OPTIONS_GROUP_PLUGIN_VISUAL_EFFECTS=	PROJECTM

PLUGIN_OUTPUT_DESC=	Output sound systems
OPTIONS_GROUP_PLUGIN_OUTPUT=	ALSA JACK OSS OSS4 \
		PULSEAUDIO QTMULTIMEDIA SHOUTCAST

PLUGIN_PLAYLIST_DESC=	Playlist operation
OPTIONS_GROUP_PLUGIN_PLAYLIST=	HAL UDISKS UDISKS2

MISC_DESC=	Other features
OPTIONS_GROUP_MISC=	ENCA MPLAYER1 MPLAYER2 SID

OPTIONS_DEFAULT=	ALSA BS2B CDDA ENCA FAAD FFMPEG \
		FLAC GME JACK HAL LADSPA MODPLUG MPLAYER1 \
		MUSEPACK OPUS OSS4 PROJECTM PULSEAUDIO QSUI QTMULTIMEDIA \
		SHOUTCAST SID SKINNEDUI SOXR UDISKS2 WILDMIDI
# ARCHIVE: Disabled until taglib>=1.11
OPTIONS_EXCLUDE=	ARCHIVE

DOXYGEN_BUILD_DEPENDS=	doxygen:devel/doxygen

QSUI_DESC=		Simple UI based on standard widgets set
QSUI_USE=	QT4=uic_build
QSUI_QMAKE_CONFIG=	WITH_QSUI

SKINNEDUI_DESC=	Skinned GUI
SKINNEDUI_QMAKE_CONFIG=	WITH_SKINNED

JACK_BUILD_DEPENDS=	jackit>=0.121.2:audio/jack
JACK_LIB_DEPENDS=	libjack.so:audio/jack \
		libsoxr.so:audio/libsoxr
JACK_QMAKE_CONFIG=	JACK_PLUGIN

ALSA_LIB_DEPENDS=	libasound.so:audio/alsa-lib
ALSA_QMAKE_CONFIG=	ALSA_PLUGIN

BS2B_DESC=	Support the Bauer stereophonic2binaural effect
BS2B_LIB_DEPENDS=	libbs2b.so:audio/libbs2b
BS2B_QMAKE_CONFIG=	BS2B_PLUGIN

SOXR_DESC=	Support SoX Resampler
SOXR_QMAKE_CONFIG=	SOXR_PLUGIN
SOXR_LIB_DEPENDS=	libsoxr.so:audio/libsoxr

PULSEAUDIO_LIB_DEPENDS=	libpulse.so:audio/pulseaudio
PULSEAUDIO_QMAKE_CONFIG=	PULSE_AUDIO_PLUGIN

QTMULTIMEDIA_DESC=	Support to use Qt low-level multimedia API
QTMULTIMEDIA_USE=	QT4=multimedia
QTMULTIMEDIA_QMAKE_CONFIG=	QTMULTIMEDIA_PLUGIN

SHOUTCAST_LIB_DEPENDS=	libshout.so:audio/libshout \
		libsoxr.so:audio/libsoxr
SHOUTCAST_QMAKE_CONFIG=	SHOUT_PLUGIN

FLAC_LIB_DEPENDS=	libFLAC.so:audio/flac
FLAC_QMAKE_CONFIG=	FLAC_PLUGIN

MUSEPACK_LIB_DEPENDS=	libmpcdec.so:audio/musepack
MUSEPACK_QMAKE_CONFIG=	MUSEPACK_PLUGIN

GME_DESC=	Support video game music files
GME_LIB_DEPENDS=	libgme.so:audio/libgme
GME_QMAKE_CONFIG=	GME_PLUGIN

OPUS_DESC=	Enable reading opusfile tags
OPUS_LIB_DEPENDS=	libopusfile.so:audio/opusfile \
		libopus.so:audio/opus
OPUS_QMAKE_CONFIG=	OPUS_PLUGIN

SID_DESC=	Support sid
SID_LIB_DEPENDS=	libsidplayfp.so:audio/libsidplayfp
SID_QMAKE_CONFIG=	SID_PLUGIN

FFMPEG_LIB_DEPENDS=	libavcodec.so:multimedia/ffmpeg
FFMPEG_QMAKE_CONFIG=	FFMPEG_PLUGIN

MODPLUG_LIB_DEPENDS=	libmodplug.so:audio/libmodplug
MODPLUG_QMAKE_CONFIG=	MODPLUG_PLUGIN

FAAD_LIB_DEPENDS=	libfaad.so:audio/faad
FAAD_QMAKE_CONFIG=	AAC_PLUGIN

CDDA_LIB_DEPENDS=	libcdio.so:sysutils/libcdio \
		libcddb.so:audio/libcddb \
		libcdio_cdda.so:sysutils/libcdio-paranoia
CDDA_QMAKE_CONFIG=	CDAUDIO_PLUGIN

ARCHIVE_DESC=	Read archived media file
ARCHIVE_LIB_DEPENDS=	libarchive.so:archivers/libarchive
ARCHIVE_QMAKE_CONFIG=	ARCHIVE_PLUGIN

ENCA_DESC=	Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:converters/enca
ENCA_QMAKE_CONFIG=	WITH_ENCA

MPLAYER1_DESC=	mplayer-1.x (multimedia/mplayer)
MPLAYER2_DESC=	mplayer-2.x (multimedia/mplayer2)
MPLAYER1_RUN_DEPENDS=	mplayer:multimedia/mplayer
MPLAYER1_PREVENTS=	MPLAYER2
MPLAYER2_RUN_DEPENDS=	mplayer:multimedia/mplayer2
MPLAYER2_PREVENTS=	MPLAYER1
MPLAYER1_QMAKE_CONFIG=	MPLAYER_PLUGIN
MPLAYER2_QMAKE_CONFIG=	MPLAYER_PLUGIN

PROJECTM_DESC=	Support the projectM music visualiser
PROJECTM_LIB_DEPENDS=	libprojectM.so.2:graphics/libprojectm
PROJECTM_USE=	GL=gl QT4=opengl
PROJECTM_QMAKE_CONFIG=	PROJECTM_PLUGIN WITH_PROJECTM20

OSS_QMAKE_CONFIG=	OSS_PLUGIN

OSS4_DESC=	Open Sound System (ver4) support
OSS4_BUILD_DEPENDS=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:audio/oss
OSS4_QMAKE_CONFIG=	OSS4_PLUGIN

LADSPA_RUN_DEPENDS=	analyseplugin:audio/ladspa
LADSPA_QMAKE_CONFIG=	LADSPA_PLUGIN

HAL_LIB_DEPENDS=	libhal.so:sysutils/hal
HAL_QMAKE_CONFIG=	HAL_PLUGIN

UDISKS_DESC=	Support removable disc detection (obsolete)
UDISKS2_DESC=	Support removable disc detection using UDisks
UDISKS_QMAKE_CONFIG=	UDISKS_PLUGIN
UDISKS2_QMAKE_CONFIG=	UDISKS2_PLUGIN

WILDMIDI_DESC=	Support to playback MIDI files
WILDMIDI_LIB_DEPENDS=	libWildMidi.so:audio/wildmidi
WILDMIDI_QMAKE_CONFIG=	WILDMIDI_PLUGIN

.include <bsd.port.options.mk>
.include "options.qmake.mk"

.if ${PORT_OPTIONS:MMPLAYER1} || ${PORT_OPTIONS:MMPLAYER2}
PLIST_SUB+=	MPLAYER=""
.else
PLIST_SUB+=	MPLAYER="@comment "
.endif

PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//}

PORTDOCS=	README README.RUS AUTHORS
INSTALLS_ICONS=	yes

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

post-patch:
	@${GREP} -l '^CONFIG' ${WRKSRC}/qmmp.pri | ${XARGS} \
		${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |'
	@${GREP} -EL '${LOCALBASE}/lib/oss/include|${LOCALBASE}/include' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmp/Makefile \
		${WRKSRC}/src/qmmpui/Makefile | ${XARGS} ${REINPLACE_CMD} -e \
		's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

post-build-DOXYGEN-on:
	cd ${WRKSRC}/doc && doxygen Doxyfile

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -name 'lib*' | ${GREP} -v \.prl$$ | \
		${XARGS} ${STRIP_CMD}

pre-install-SKINNEDUI-on:
	${STRIP_CMD} ${WRKSRC}/bin/qmmp

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

post-install-DOXYGEN-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/html/search ; \
	cd ${WRKSRC}/doc/html && \
		${INSTALL_MAN} *.html *.png *.css ${STAGEDIR}${DOCSDIR}/html ; \
	cd ${WRKSRC}/doc/html/search && \
		${INSTALL_MAN} *.html *.png *.css *.js ${STAGEDIR}${DOCSDIR}/html/search ; \
	${RM} ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type f | \
		${SED} 's|${STAGEDIR}${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST}

.include <bsd.port.mk>
