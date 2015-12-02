# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	1.1.0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
	SF/qmmp-dev/${PORTNAME}/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Qt5-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS=	libmad.so:${PORTSDIR}/audio/libmad \
		libsndfile.so:${PORTSDIR}/audio/libsndfile \
		libogg.so:${PORTSDIR}/audio/libogg \
		libvorbis.so:${PORTSDIR}/audio/libvorbis \
		libwavpack.so:${PORTSDIR}/audio/wavpack \
		libtag.so:${PORTSDIR}/audio/taglib \
		libcurl.so:${PORTSDIR}/ftp/curl \
		libmms.so:${PORTSDIR}/net/libmms

USES=		desktop-file-utils gmake pkgconfig qmake tar:bzip2
USE_QT5=	core dbus gui network xml \
		buildtools_build linguisttools_build qmake_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_GROUP=	DOCUMENTS PLUGIN_APPLICATION PLUGIN_FORMATS \
		PLUGIN_DSP_EFFECTS PLUGIN_VISUAL_EFFECTS PLUGIN_OUTPUT \
		PLUGIN_PLAYLIST MISC

PLUGIN_APPLICATION_DESC=	Main program view
OPTIONS_GROUP_PLUGIN_APPLICATION=	SKINNEDUI QSUI

DOCUMENTS_DESC=	Documentation and API Reference
OPTIONS_GROUP_DOCUMENTS=	DOCS DOXYGEN

PLUGIN_FORMATS_DESC=	Supports for various formats
OPTIONS_GROUP_PLUGIN_FORMATS=	CDDA FAAD FFMPEG FLAC GME MODPLUG \
		MUSEPACK WILDMIDI OPUS

PLUGIN_DSP_EFFECTS_DESC=	DSP effects
OPTIONS_GROUP_PLUGIN_DSP_EFFECTS=	BS2B LADSPA

PLUGIN_VISUAL_EFFECTS_DESC=	Visual effects
OPTIONS_GROUP_PLUGIN_VISUAL_EFFECTS=	PROJECTM

PLUGIN_OUTPUT_DESC=	Output sound systems
OPTIONS_GROUP_PLUGIN_OUTPUT=	ALSA JACK OSS OSS4 PULSEAUDIO QTMULTIMEDIA

PLUGIN_PLAYLIST_DESC=	Playlist operation
OPTIONS_GROUP_PLUGIN_PLAYLIST=	HAL UDISKS2

MISC_DESC=	Other features
OPTIONS_SINGLE=	MPLAYER
OPTIONS_SINGLE_MPLAYER=	MPLAYER1 MPLAYER2
OPTIONS_GROUP_MISC=	ENCA MPLAYER SID

OPTIONS_DEFAULT=	ALSA BS2B CDDA ENCA FAAD FFMPEG \
		FLAC GME JACK HAL LADSPA MODPLUG MPLAYER MPLAYER1 \
		MUSEPACK OPUS OSS4 PROJECTM PULSEAUDIO QSUI \
		SID SKINNEDUI UDISKS2 WILDMIDI

DOXYGEN_BUILD_DEPENDS=	doxygen:${PORTSDIR}/devel/doxygen

SKINNEDUI_DESC=	Skinned GUI
SKINNEDUI_QMAKE_CONFIG=	WITH_SKINNED

QSUI_DESC=		Simple UI based on standard widgets set
QSUI_QMAKE_CONFIG=	WITH_QSUI

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

QTMULTIMEDIA_DESC=	Support to use Qt low-level multimedia API
QTMULTIMEDIA_USE=	QT5=multimedia
QTMULTIMEDIA_QMAKE_CONFIG=	QTMULTIMEDIA_PLUGIN

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

CDDA_DESC=	Support to playback compact discs
CDDA_LIB_DEPENDS=	libcdio.so:${PORTSDIR}/sysutils/libcdio \
	libcdio_cdda.so:${PORTSDIR}/sysutils/libcdio-paranoia
CDDA_QMAKE_CONFIG=	CDAUDIO_PLUGIN

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
PROJECTM_USE=	QT5=opengl
PROJECTM_QMAKE_CONFIG=	PROJECTM_PLUGIN

OSS_QMAKE_CONFIG=	OSS_PLUGIN

OSS4_DESC=	Open Sound System (ver4) support
OSS4_BUILD_DEPENDS=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss
OSS4_QMAKE_CONFIG=	OSS4_PLUGIN

LADSPA_RUN_DEPENDS=	analyseplugin:${PORTSDIR}/audio/ladspa
LADSPA_QMAKE_CONFIG=	LADSPA_PLUGIN

HAL_LIB_DEPENDS=	libhal.so:${PORTSDIR}/sysutils/hal
HAL_QMAKE_CONFIG=	HAL_PLUGIN

UDISKS2_DESC=	Support removable disc detection using UDisks
UDISKS2_QMAKE_CONFIG=	UDISKS2_PLUGIN

WILDMIDI_DESC=	Support to playback MIDI files
WILDMIDI_LIB_DEPENDS=	libWildMidi.so:${PORTSDIR}/audio/wildmidi
WILDMIDI_QMAKE_CONFIG=	WILDMIDI_PLUGIN

.include "options.qmake.mk"

CONFLICTS=	${PORTNAME}-qt4-0.*

PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//}

PORTDOCS=	README README.RUS AUTHORS
INSTALLS_ICONS=	yes

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

post-patch:
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
	@${FIND} ${WRKSRC}/lib/ -type f -name 'lib*' -exec ${STRIP_CMD} {} +

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
	${RM} -f ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type f | \
		${SED} 's|${STAGEDIR}${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST}

.include <bsd.port.mk>
