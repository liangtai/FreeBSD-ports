# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	0.8.5
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of QMMP plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	DOCUMENTS PLUGIN_APPLICATION PLUGIN_FORMATS \
		PLUGIN_DSP_EFFECTS PLUGIN_VISUAL_EFFECTS PLUGIN_OUTPUT \
		PLUGIN_PLAYLIST PLUGIN_NETWORKING MISC

PLUGIN_APPLICATION_DESC=	Main program view
OPTIONS_MULTI_PLUGIN_APPLICATION=	APP GNOMEHOTKEY HOTKEY KDENOTIFY \
		NOTIFIER QMMP_DIALOG SKINNEDUI STATICON

DOCUMENTS_DESC=	Documentation and API Reference
OPTIONS_MULTI_DOCUMENTS=	DOXYGEN

PLUGIN_FORMATS_DESC=	Support various media formats
OPTIONS_MULTI_PLUGIN_FORMATS=	CDDA FAAD FFMPEG FLAC GME MAD MODPLUG \
		MUSEPACK OPUS SNDFILE VORBIS WAVPACK WILDMIDI

PLUGIN_DSP_EFFECTS_DESC=	DSP effects
OPTIONS_MULTI_PLUGIN_DSP_EFFECTS=	BS2B CROSSFADE LADSPA SRCONV STEREO

PLUGIN_VISUAL_EFFECTS_DESC=	Visual effects
OPTIONS_MULTI_PLUGIN_VISUAL_EFFECTS=	ANALYZER PROJECTM

PLUGIN_OUTPUT_DESC=	Output sound systems
OPTIONS_MULTI_PLUGIN_OUTPUT=	ALSA JACK NULLOUT OSS OSS4 PULSEAUDIO

PLUGIN_PLAYLIST_DESC=	Playlist operation
OPTIONS_MULTI_PLUGIN_PLAYLIST=	COPYPASTE FILEOPS HAL \
		TRACKCHANGE UDISKS UDISKS2

PLUGIN_NETWORKING_DESC=	Features via the Net
OPTIONS_MULTI_PLUGIN_NETWORKING=	COVER CURL LYRICS MMS SB SCROBBLER

MISC_DESC=	Other features
OPTIONS_MULTI_MISC=	CONVERTER CUE MPLAYER MPRIS RGSCAN SID

OPTIONS_DEFAULT=	ALSA ANALYZER BS2B CDDA CONVERTER COPYPASTE COVER \
		CROSSFADE CUE CURL FAAD FFMPEG FILEOPS FLAC \
		GNOMEHOTKEY GME HAL HOTKEY JACK KDENOTIFY LADSPA LYRICS MAD \
		MMS MODPLUG MPRIS MPLAYER MUSEPACK NOTIFIER NULLOUT \
		OPUS OSS4 PROJECTM PULSEAUDIO QMMP_DIALOG RGSCAN SB SCROBBLER \
		SID SKINNEDUI SNDFILE SRCONV STATICON STEREO \
		TRACKCHANGE UDISKS2 VORBIS WAVPACK WILDMIDI

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

APP_DESC=	QMMP Main window
APP_RUN_DEPENDS=	${LOCALBASE}/bin/qmmp:${PORTSDIR}/multimedia/qmmp-app
GNOMEHOTKEY_DESC=	Support GNOME/Cinnamon shortcut keys
GNOMEHOTKEY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libgnomehotkey.so:${PORTSDIR}/accessibility/qmmp-plugin-gnomehotkey
HOTKEY_DESC=	Support global shortcut keys
HOTKEY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhotkey.so:${PORTSDIR}/accessibility/qmmp-plugin-hotkey
NOTIFIER_DESC=	Support to popup notifier
NOTIFIER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libnotifier.so:${PORTSDIR}/deskutils/qmmp-plugin-notifier
KDENOTIFY_DESC=	Support to popup notifier for KDE
KDENOTIFY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libkdenotify.so:${PORTSDIR}/deskutils/qmmp-plugin-kdenotify
QMMP_DIALOG_DESC=	An original filedialog
QMMP_DIALOG_RUN_DEPENDS=	${QMMPLIBDIR}/FileDialogs/libqmmpfiledialog.so:${PORTSDIR}/x11-fm/qmmp-plugin-filedialog
SKINNEDUI_DESC=	Skinned GUI
SKINNEDUI_RUN_DEPENDS=	${QMMPLIBDIR}/Ui/libskinned.so:${PORTSDIR}/multimedia/qmmp-plugin-skinned
STATICON_DESC=	Show status icon
STATICON_RUN_DEPENDS=	${QMMPLIBDIR}/General/libstatusicon.so:${PORTSDIR}/multimedia/qmmp-plugin-staticon

DOXYGEN_RUN_DEPENDS=	${DOCSDIR}/html/index.html:${PORTSDIR}/multimedia/qmmp-reference

CDDA_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libcdaudio.so:${PORTSDIR}/audio/qmmp-plugin-cdda
FAAD_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libaac.so:${PORTSDIR}/audio/qmmp-plugin-faad
FFMPEG_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffmpeg.so:${PORTSDIR}/multimedia/qmmp-plugin-ffmpeg
FLAC_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libflac.so:${PORTSDIR}/audio/qmmp-plugin-flac
GME_DESC=		Support video game music files
GME_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libgme.so:${PORTSDIR}/games/qmmp-plugin-gme
MAD_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmad.so:${PORTSDIR}/audio/qmmp-plugin-mad
MODPLUG_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmodplug.so:${PORTSDIR}/audio/qmmp-plugin-modplug
MUSEPACK_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpc.so:${PORTSDIR}/audio/qmmp-plugin-musepack
OPUS_DESC=		Enable reading opusfile tags
OPUS_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libopus.so:${PORTSDIR}/audio/qmmp-plugin-opus
SNDFILE_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libsndfile.so:${PORTSDIR}/audio/qmmp-plugin-sndfile
VORBIS_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libvorbis.so:${PORTSDIR}/audio/qmmp-plugin-vorbis
WAVPACK_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libwavpack.so:${PORTSDIR}/audio/qmmp-plugin-wavpack
WILDMIDI_DESC=	Support to playback MIDI files
WILDMIDI_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libwildmidi.so:${PORTSDIR}/audio/qmmp-plugin-wildmidi

BS2B_DESC=		Support the Bauer stereophonic2binaural effect
BS2B_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libbs2b.so:${PORTSDIR}/audio/qmmp-plugin-bs2b
CROSSFADE_DESC=	Support cross-fade effect
CROSSFADE_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libcrossfade.so:${PORTSDIR}/audio/qmmp-plugin-crossfade
LADSPA_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libladspa.so:${PORTSDIR}/audio/qmmp-plugin-ladspa
SRCONV_DESC=	Support the sample rate converter
SRCONV_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libsrconverter.so:${PORTSDIR}/audio/qmmp-plugin-srconv
STEREO_DESC=	Support stereo effect
STEREO_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libstereo.so:${PORTSDIR}/audio/qmmp-plugin-stereo

ANALYZER_DESC=	Supoort spectrum analyzer visualization
ANALYZER_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libanalyzer.so:${PORTSDIR}/multimedia/qmmp-plugin-analyzer
PROJECTM_DESC=	Support the projectM music visualiser
PROJECTM_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libprojectm.so:${PORTSDIR}/graphics/qmmp-plugin-projectm

ALSA_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libalsa.so:${PORTSDIR}/audio/qmmp-plugin-alsa
JACK_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libjack.so:${PORTSDIR}/audio/qmmp-plugin-jack
NULLOUT_DESC=	Support null output
NULLOUT_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libnull.so:${PORTSDIR}/audio/qmmp-plugin-nullout
OSS_RUN_DEPENDS=	${QMMPLIBDIR}/Output/liboss.so:${PORTSDIR}/audio/qmmp-plugin-oss
OSS4_DESC=		Open Sound System (ver4) support
OSS4_RUN_DEPENDS=	${QMMPLIBDIR}/Output/liboss4.so:${PORTSDIR}/audio/qmmp-plugin-oss4
PULSEAUDIO_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libpulseaudio.so:${PORTSDIR}/audio/qmmp-plugin-pulseaudio

COPYPASTE_DESC=	Enable copy/paste track infos between playlists
COPYPASTE_RUN_DEPENDS=	${QMMPLIBDIR}/General/libcopypaste.so:${PORTSDIR}/misc/qmmp-plugin-copypaste
FILEOPS_DESC=	Support file operation
FILEOPS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libfileops.so:${PORTSDIR}/sysutils/qmmp-plugin-fileops
HAL_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhal.so:${PORTSDIR}/sysutils/qmmp-plugin-hal
TRACKCHANGE_DESC=	Enable to run external command each track switching
TRACKCHANGE_RUN_DEPENDS=	${QMMPLIBDIR}/General/libtrackchange.so:${PORTSDIR}/misc/qmmp-plugin-trackchange
UDISKS_DESC=	Support removable disc detection (obsolete)
UDISKS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libudisks.so:${PORTSDIR}/sysutils/qmmp-plugin-udisks
UDISKS2_DESC=	Support removable disc detection using UDisks
UDISKS2_RUN_DEPENDS=	${QMMPLIBDIR}/General/libudisks2.so:${PORTSDIR}/sysutils/qmmp-plugin-udisks2

COVER_DESC=	Support to show cover images
COVER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libcovermanager.so:${PORTSDIR}/graphics/qmmp-plugin-coverart
CURL_RUN_DEPENDS=	${QMMPLIBDIR}/Transports/libhttp.so:${PORTSDIR}/ftp/qmmp-plugin-curl
LYRICS_DESC=	Support to show lyrics using lyrics.wikia.com
LYRICS_RUN_DEPENDS=	${QMMPLIBDIR}/General/liblyrics.so:${PORTSDIR}/audio/qmmp-plugin-lyrics
MMS_RUN_DEPENDS=	${QMMPLIBDIR}/Transports/libmms.so:${PORTSDIR}/net/qmmp-plugin-mms
SB_DESC=	Browser for IceCast stream directory
SB_RUN_DEPENDS=	${QMMPLIBDIR}/General/libstreambrowser.so:${PORTSDIR}/audio/qmmp-plugin-streambrowser
SCROBBLER_DESC=	Support Libre.fm/Last.fm scrobbler feature
SCROBBLER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libscrobbler.so:${PORTSDIR}/net/qmmp-plugin-scrobbler

MPLAYER_RUN_DEPENDS=	${QMMPLIBDIR}/Engines/libmplayer.so:${PORTSDIR}/multimedia/qmmp-plugin-mplayer
CONVERTER_DESC=	Support file type converter
CONVERTER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libconverter.so:${PORTSDIR}/audio/qmmp-plugin-converter
CUE_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libcue.so:${PORTSDIR}/audio/qmmp-plugin-cue
MPRIS_DESC=	Support the Media Player Remote
MPRIS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libmpris.so:${PORTSDIR}/audio/qmmp-plugin-mpris
RGSCAN_DESC=	ReplayGain scanner
RGSCAN_RUN_DEPENDS=	${QMMPLIBDIR}/General/librgscan.so:${PORTSDIR}/audio/qmmp-plugin-rgscan
SID_DESC=	Support sid
SID_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libsid.so:${PORTSDIR}/audio/qmmp-plugin-sid

.include <bsd.port.mk>
