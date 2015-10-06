# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	0.9.2
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
	SF/qmmp-dev/${PORTNAME}/
PKGNAMESUFFIX=	-qt4

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

USES=		desktop-file-utils dos2unix gmake pkgconfig qmake tar:bzip2
USE_QT4=	corelib dbus gui network xml \
		linguisttools_build moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_MULTI=	DOCUMENTS PLUGIN_APPLICATION PLUGIN_FORMATS \
		PLUGIN_DSP_EFFECTS PLUGIN_VISUAL_EFFECTS PLUGIN_OUTPUT \
		PLUGIN_PLAYLIST MISC

PLUGIN_APPLICATION_DESC=	Main program view
OPTIONS_MULTI_PLUGIN_APPLICATION=	QSUI SKINNEDUI

DOCUMENTS_DESC=	Documentation and API Reference
OPTIONS_MULTI_DOCUMENTS=	DOCS DOXYGEN

PLUGIN_FORMATS_DESC=	Supports for various formats
OPTIONS_MULTI_PLUGIN_FORMATS=	CDDA FAAD FFMPEG FLAC GME MODPLUG \
		MUSEPACK WILDMIDI OPUS

PLUGIN_DSP_EFFECTS_DESC=	DSP effects
OPTIONS_MULTI_PLUGIN_DSP_EFFECTS=	BS2B LADSPA

PLUGIN_VISUAL_EFFECTS_DESC=	Visual effects
OPTIONS_MULTI_PLUGIN_VISUAL_EFFECTS=	PROJECTM

PLUGIN_OUTPUT_DESC=	Output sound systems
OPTIONS_MULTI_PLUGIN_OUTPUT=	ALSA JACK OSS OSS4 PULSEAUDIO

PLUGIN_PLAYLIST_DESC=	Playlist operation
OPTIONS_MULTI_PLUGIN_PLAYLIST=	HAL UDISKS UDISKS2

MISC_DESC=	Other features
OPTIONS_SINGLE=	MPLAYER
OPTIONS_SINGLE_MPLAYER=	MPLAYER1 MPLAYER2
OPTIONS_MULTI_MISC=	ENCA MPLAYER SID

OPTIONS_DEFAULT=	ALSA BS2B CDDA ENCA FAAD FFMPEG \
		FLAC GME JACK HAL LADSPA MODPLUG MPLAYER MPLAYER1 \
		MUSEPACK OPUS OSS4 PROJECTM PULSEAUDIO QSUI \
		SID SKINNEDUI UDISKS2 WILDMIDI

DOXYGEN_BUILD_DEPENDS=	doxygen:${PORTSDIR}/devel/doxygen

QSUI_DESC=		Simple UI based on standard widgets set
QSUI_USE=	QT4=network,uic_build
QSUI_QMAKE_CONFIG=	WITH_QSUI

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

QTVER=	${PKGNAMESUFFIX}
PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//} QTVER=${PKGNAMESUFFIX}

PORTDOCS=	README README.RUS AUTHORS
INSTALLS_ICONS=	yes
DOS2UNIX_FILES=	${WRKSRC}/src/plugins/General/hotkey/hotkey.pro
DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}${PKGNAMESUFFIX}

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

post-extract:
.for I in 16x16 32x32 48x48 56x56
	@${MV} ${WRKSRC}/src/app/images/${I}/qmmp.png \
		${WRKSRC}/src/app/images/${I}/qmmp${QTVER}.png
.endfor
.for I in qmmp-simple qmmp
	@${MV} ${WRKSRC}/src/app/images/scalable/${I}.svgz \
		${WRKSRC}/src/app/images/scalable/${I}${QTVER}.svgz
.endfor
.for I in app_icon empty_cover
	@${MV} ${WRKSRC}/src/plugins/General/kdenotify/images/${I}.png \
		${WRKSRC}/src/plugins/General/kdenotify/images/${I}${QTVER}.png
.endfor
	@cd ${WRKSRC}/src && ${LN} -sf qmmp/ qmmp${QTVER}

post-patch:
	@${GREP} -l '^CONFIG' ${WRKSRC}/qmmp.pri | ${XARGS} \
		${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |'
	@${GREP} -EL '${LOCALBASE}/lib/oss/include|${LOCALBASE}/include' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'
	# Append ${QTVER} at every file or path to avoid conflict with Qt5 qmmp
	@${GREP} -l 'qmmp ' ${WRKSRC}/src/app/translations/qmmp_*.ts \
		${WRKSRC}/src/plugins/CommandLineOptions/StatusOption/translations/status_plugin_*.ts \
		| ${XARGS} ${REINPLACE_CMD} -E \
		-e '/(Usage|example):/,+1s/qmmp/&${QTVER}/'
	@${GREP} -l 'qmmp$$' \
		${WRKSRC}/src/app/desktop-translations/qmmp_*.desktop.in | \
		${XARGS} ${REINPLACE_CMD} -E -e '/^(Exec|Icon)=/s/qmmp/&${QTVER}/'
	@${GREP} -l 'app_icon\.png' ${WRKSRC}/src/plugins/General/kdenotify/kdenotify.pro | \
		${XARGS} ${REINPLACE_CMD} -e '/ images\//s/\.png/${QTVER}&/' \
		-e '/target\.path/s/\/qmmp\//\/qmmp${QTVER}\//' \
		-E -e 's/-lqmmp(ui)?($$| )/-lqmmp\1${QTVER}\2/g'
	@${GREP} -lE 'include/qmmp(ui)?$$' ${WRKSRC}/src/qmmp/qmmp.pro \
		${WRKSRC}/src/qmmpui/qmmpui.pro | ${XARGS} ${REINPLACE_CMD} \
		-e '/QMAKE_PKGCONFIG_DESCRIPTION/s/$$/ (Qt4)/' \
		-E -e 's/QMAKE_PKGCONFIG_NAME = qmmp(ui)?$$/&${QTVER}/' \
		-E -e '/(TARGET|devel\.path) =/s/qmmp(ui)?$$/&${QTVER}/'
	@${FIND} ${WRKSRC} -type f -name '*.pro' | ${XARGS} \
		${GREP} -lE 'lqmmp[^-0]|lqmmp$$' | ${XARGS} \
		${REINPLACE_CMD} -e '/target\.path/s/\/qmmp\//\/qmmp${QTVER}\//' \
		-E -e 's/-lqmmp(ui)?($$| )/-lqmmp\1${QTVER}\2/g'
	@${GREP} -l 'images.qrc' ${WRKSRC}/src/app/app.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^unix:TARGET/s/qmmp$$/&${QTVER}/' \
		-e 's/images\.qrc/images${QTVER}.qrc/' \
		-E -e 's/\.(desktop|png|svg)/${QTVER}.\1/'
	@${GREP} -l ': qmmp ' ${WRKSRC}/src/app/qmmpstarter.cpp \
		${WRKSRC}/src/app/builtincommandlineoption.cpp \
		${WRKSRC}/src/plugins/CommandLineOptions/StatusOption/statusoption.cpp \
		| ${XARGS} ${REINPLACE_CMD} -e 's/: qmmp /: qmmp${QTVER} /'
	@${GREP} -l '\"/qmmp\"' ${WRKSRC}/src/qmmp/qmmp.cpp | ${XARGS} \
		${REINPLACE_CMD} -e '/LIB_DIR/s/\/qmmp/\/qmmp${QTVER}/'
	@${GREP} -l 'qmmp/' ${WRKSRC}/src/qmmpui/*.h | ${XARGS} \
		${REINPLACE_CMD} -e '/#include/s|qmmp/|qmmp${QTVER}/|'
	@${GREP} -l '/lib/qmmp$$' ${WRKSRC}/src/plugins/plugins.pri | ${XARGS} \
		${REINPLACE_CMD} -e '/^unix:/s/qmmp$$/&${QTVER}/'
	@${SED} 's|/qmmp|/qmmp${QTVER}|' ${WRKSRC}/src/app/images/images.qrc \
		> ${WRKSRC}/src/app/images/images${QTVER}.qrc
.for D in qmmp qmmp_enqueue qmmp_dir
	@${SED} -E 's/^(Exec|Icon)=qmmp/&${QTVER}/' \
		${WRKSRC}/src/app/${D}.desktop > ${WRKSRC}/src/app/${D}${QTVER}.desktop
.endfor

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmp/Makefile \
		${WRKSRC}/src/qmmpui/Makefile | ${XARGS} ${REINPLACE_CMD} -e \
		's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

post-build-DOXYGEN-on:
	cd ${WRKSRC}/doc && doxygen Doxyfile

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -name 'lib*' -exec ${STRIP_CMD} {} +

pre-install-SKINNEDUI-on:
	${STRIP_CMD} ${WRKSRC}/bin/qmmp${QTVER}

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
