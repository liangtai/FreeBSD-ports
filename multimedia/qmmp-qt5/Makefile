# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	1.1.0
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty
PKGNAMESUFFIX=	-qt5

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of QMMP (Qt5) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_GROUP=	DOCUMENTS PLUGIN_APPLICATION PLUGIN_FORMATS \
		PLUGIN_DSP_EFFECTS PLUGIN_VISUAL_EFFECTS PLUGIN_OUTPUT \
		PLUGIN_PLAYLIST PLUGIN_NETWORKING MISC

PLUGIN_APPLICATION_DESC=	Main program view
OPTIONS_GROUP_PLUGIN_APPLICATION=	APP GNOMEHOTKEY HOTKEY KDENOTIFY \
		NOTIFIER QMMP_DIALOG QSUI SKINNEDUI STATICON

DOCUMENTS_DESC=	Documentation and API Reference
OPTIONS_GROUP_DOCUMENTS=	DOXYGEN

PLUGIN_FORMATS_DESC=	Support various media formats
OPTIONS_GROUP_PLUGIN_FORMATS=	CDDA FAAD FFMPEG FLAC GME MAD MODPLUG \
		MUSEPACK OPUS SNDFILE VORBIS WAVPACK WILDMIDI

PLUGIN_DSP_EFFECTS_DESC=	DSP effects
OPTIONS_GROUP_PLUGIN_DSP_EFFECTS=	BS2B CROSSFADE LADSPA SRCONV STEREO

PLUGIN_VISUAL_EFFECTS_DESC=	Visual effects
OPTIONS_GROUP_PLUGIN_VISUAL_EFFECTS=	ANALYZER PROJECTM

PLUGIN_OUTPUT_DESC=	Output sound systems
OPTIONS_GROUP_PLUGIN_OUTPUT=	ALSA JACK NULLOUT OSS OSS4 \
		PULSEAUDIO QTMULTIMEDIA

PLUGIN_PLAYLIST_DESC=	Playlist operation
OPTIONS_GROUP_PLUGIN_PLAYLIST=	COPYPASTE FILEOPS HAL \
		TRACKCHANGE UDISKS2

PLUGIN_NETWORKING_DESC=	Features via the Net
OPTIONS_GROUP_PLUGIN_NETWORKING=	COVER CURL LYRICS MMS SB SCROBBLER

MISC_DESC=	Other features
OPTIONS_GROUP_MISC=	CONVERTER CUE MPLAYER MPRIS RGSCAN SID

OPTIONS_DEFAULT=	APP ALSA ANALYZER BS2B CDDA CONVERTER COPYPASTE COVER \
		CROSSFADE CUE CURL FAAD FFMPEG FILEOPS FLAC \
		GNOMEHOTKEY GME HAL HOTKEY JACK KDENOTIFY LADSPA LYRICS MAD \
		MMS MODPLUG MPRIS MPLAYER MUSEPACK NOTIFIER NULLOUT \
		OPUS OSS4 PROJECTM PULSEAUDIO QMMP_DIALOG QSUI RGSCAN \
		SB SCROBBLER SID SKINNEDUI SNDFILE SRCONV STATICON STEREO \
		TRACKCHANGE UDISKS2 VORBIS WAVPACK WILDMIDI

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

APP_DESC=	QMMP Main application
APP_RUN_DEPENDS=	${LOCALBASE}/bin/qmmp:${PORTSDIR}/multimedia/qmmp-qt5-app
GNOMEHOTKEY_DESC=	Support GNOME/Cinnamon shortcut keys
GNOMEHOTKEY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libgnomehotkey.so:${PORTSDIR}/accessibility/qmmp-qt5-plugin-gnomehotkey
HOTKEY_DESC=	Support global shortcut keys
HOTKEY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhotkey.so:${PORTSDIR}/accessibility/qmmp-qt5-plugin-hotkey
NOTIFIER_DESC=	Support to popup notifier
NOTIFIER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libnotifier.so:${PORTSDIR}/deskutils/qmmp-qt5-plugin-notifier
KDENOTIFY_DESC=	Support to popup notifier for KDE
KDENOTIFY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libkdenotify.so:${PORTSDIR}/deskutils/qmmp-qt5-plugin-kdenotify
QMMP_DIALOG_DESC=	An original filedialog
QMMP_DIALOG_RUN_DEPENDS=	${QMMPLIBDIR}/FileDialogs/libqmmpfiledialog.so:${PORTSDIR}/x11-fm/qmmp-qt5-plugin-filedialog
QSUI_DESC=		Simple UI based on standard widgets set
QSUI_RUN_DEPENDS=	${QMMPLIBDIR}/Ui/libqsui.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-qsui
SKINNEDUI_DESC=	Skinned GUI
SKINNEDUI_RUN_DEPENDS=	${QMMPLIBDIR}/Ui/libskinned.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-skinned
STATICON_DESC=	Show status icon
STATICON_RUN_DEPENDS=	${QMMPLIBDIR}/General/libstatusicon.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-staticon

DOXYGEN_RUN_DEPENDS=	${DOCSDIR}/html/index.html:${PORTSDIR}/multimedia/qmmp-qt5-reference

CDDA_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libcdaudio.so:${PORTSDIR}/audio/qmmp-qt5-plugin-cdda
FAAD_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libaac.so:${PORTSDIR}/audio/qmmp-qt5-plugin-faad
FFMPEG_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffmpeg.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-ffmpeg
FLAC_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libflac.so:${PORTSDIR}/audio/qmmp-qt5-plugin-flac
GME_DESC=		Support video game music files
GME_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libgme.so:${PORTSDIR}/games/qmmp-qt5-plugin-gme
MAD_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmad.so:${PORTSDIR}/audio/qmmp-qt5-plugin-mad
MODPLUG_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmodplug.so:${PORTSDIR}/audio/qmmp-qt5-plugin-modplug
MUSEPACK_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpc.so:${PORTSDIR}/audio/qmmp-qt5-plugin-musepack
OPUS_DESC=		Enable reading opusfile tags
OPUS_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libopus.so:${PORTSDIR}/audio/qmmp-qt5-plugin-opus
SNDFILE_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libsndfile.so:${PORTSDIR}/audio/qmmp-qt5-plugin-sndfile
VORBIS_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libvorbis.so:${PORTSDIR}/audio/qmmp-qt5-plugin-vorbis
WAVPACK_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libwavpack.so:${PORTSDIR}/audio/qmmp-qt5-plugin-wavpack
WILDMIDI_DESC=	Support to playback MIDI files
WILDMIDI_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libwildmidi.so:${PORTSDIR}/audio/qmmp-qt5-plugin-wildmidi

BS2B_DESC=		Support the Bauer stereophonic2binaural effect
BS2B_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libbs2b.so:${PORTSDIR}/audio/qmmp-qt5-plugin-bs2b
CROSSFADE_DESC=	Support cross-fade effect
CROSSFADE_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libcrossfade.so:${PORTSDIR}/audio/qmmp-qt5-plugin-crossfade
LADSPA_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libladspa.so:${PORTSDIR}/audio/qmmp-qt5-plugin-ladspa
SRCONV_DESC=	Support the sample rate converter
SRCONV_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libsrconverter.so:${PORTSDIR}/audio/qmmp-qt5-plugin-srconv
STEREO_DESC=	Support stereo effect
STEREO_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libstereo.so:${PORTSDIR}/audio/qmmp-qt5-plugin-stereo

ANALYZER_DESC=	Support spectrum analyzer visualization
ANALYZER_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libanalyzer.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-analyzer
PROJECTM_DESC=	Support the projectM music visualiser
PROJECTM_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libprojectm.so:${PORTSDIR}/graphics/qmmp-qt5-plugin-projectm

ALSA_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libalsa.so:${PORTSDIR}/audio/qmmp-qt5-plugin-alsa
JACK_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libjack.so:${PORTSDIR}/audio/qmmp-qt5-plugin-jack
NULLOUT_DESC=	Support null output
NULLOUT_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libnull.so:${PORTSDIR}/audio/qmmp-qt5-plugin-nullout
OSS_RUN_DEPENDS=	${QMMPLIBDIR}/Output/liboss.so:${PORTSDIR}/audio/qmmp-qt5-plugin-oss
OSS4_DESC=		Open Sound System (ver4) support
OSS4_RUN_DEPENDS=	${QMMPLIBDIR}/Output/liboss4.so:${PORTSDIR}/audio/qmmp-qt5-plugin-oss4
PULSEAUDIO_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libpulseaudio.so:${PORTSDIR}/audio/qmmp-qt5-plugin-pulseaudio
QTMULTIMEDIA_DESC=	Support to use Qt low-level multimedia API
QTMULTIMEDIA_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libqtmultimedia.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-qtmultimedia

COPYPASTE_DESC=	Enable copy/paste track infos between playlists
COPYPASTE_RUN_DEPENDS=	${QMMPLIBDIR}/General/libcopypaste.so:${PORTSDIR}/misc/qmmp-qt5-plugin-copypaste
FILEOPS_DESC=	Support file operation
FILEOPS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libfileops.so:${PORTSDIR}/sysutils/qmmp-qt5-plugin-fileops
HAL_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhal.so:${PORTSDIR}/sysutils/qmmp-qt5-plugin-hal
TRACKCHANGE_DESC=	Enable to run external command each track switching
TRACKCHANGE_RUN_DEPENDS=	${QMMPLIBDIR}/General/libtrackchange.so:${PORTSDIR}/misc/qmmp-qt5-plugin-trackchange
UDISKS2_DESC=	Support removable disc detection using UDisks
UDISKS2_RUN_DEPENDS=	${QMMPLIBDIR}/General/libudisks2.so:${PORTSDIR}/sysutils/qmmp-qt5-plugin-udisks2

COVER_DESC=	Support to show cover images
COVER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libcovermanager.so:${PORTSDIR}/graphics/qmmp-qt5-plugin-coverart
CURL_RUN_DEPENDS=	${QMMPLIBDIR}/Transports/libhttp.so:${PORTSDIR}/ftp/qmmp-qt5-plugin-curl
LYRICS_DESC=	Support to show lyrics using lyrics.wikia.com
LYRICS_RUN_DEPENDS=	${QMMPLIBDIR}/General/liblyrics.so:${PORTSDIR}/audio/qmmp-qt5-plugin-lyrics
MMS_RUN_DEPENDS=	${QMMPLIBDIR}/Transports/libmms.so:${PORTSDIR}/net/qmmp-qt5-plugin-mms
SB_DESC=	Browser for IceCast stream directory
SB_RUN_DEPENDS=	${QMMPLIBDIR}/General/libstreambrowser.so:${PORTSDIR}/audio/qmmp-qt5-plugin-streambrowser
SCROBBLER_DESC=	Support Libre.fm/Last.fm scrobbler feature
SCROBBLER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libscrobbler.so:${PORTSDIR}/net/qmmp-qt5-plugin-scrobbler

MPLAYER_RUN_DEPENDS=	${QMMPLIBDIR}/Engines/libmplayer.so:${PORTSDIR}/multimedia/qmmp-qt5-plugin-mplayer
CONVERTER_DESC=	Support file type converter
CONVERTER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libconverter.so:${PORTSDIR}/audio/qmmp-qt5-plugin-converter
CUE_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libcue.so:${PORTSDIR}/audio/qmmp-qt5-plugin-cue
MPRIS_DESC=	Support the Media Player Remote
MPRIS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libmpris.so:${PORTSDIR}/audio/qmmp-qt5-plugin-mpris
RGSCAN_DESC=	ReplayGain scanner
RGSCAN_RUN_DEPENDS=	${QMMPLIBDIR}/General/librgscan.so:${PORTSDIR}/audio/qmmp-qt5-plugin-rgscan
SID_DESC=	Support sid
SID_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libsid.so:${PORTSDIR}/audio/qmmp-qt5-plugin-sid

.include <bsd.port.mk>
