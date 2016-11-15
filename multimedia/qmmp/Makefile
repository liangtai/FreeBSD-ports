# $FreeBSD$

PORTNAME=	qmmp
PORTVERSION=	0.10.5
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of QMMP (Qt4) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_GROUP=	DOCUMENTS PLUGIN_APPLICATION PLUGIN_FORMATS \
		PLUGIN_DSP_EFFECTS PLUGIN_VISUAL_EFFECTS PLUGIN_OUTPUT \
		PLUGIN_PLAYLIST PLUGIN_NETWORKING MISC

PLUGIN_APPLICATION_DESC=	Main program view
OPTIONS_GROUP_PLUGIN_APPLICATION=	APP GNOMEHOTKEY HOTKEY KDENOTIFY \
		NOTIFIER QMMP_DIALOG QSUI SKINNEDUI STATICON TWOPANELDIALOG

DOCUMENTS_DESC=	Documentation and API Reference
OPTIONS_GROUP_DOCUMENTS=	DOXYGEN

PLUGIN_FORMATS_DESC=	Support various media formats
OPTIONS_GROUP_PLUGIN_FORMATS=	CDDA FAAD FFMPEG FLAC GME MAD MODPLUG \
		MUSEPACK OPUS SNDFILE VORBIS WAVPACK WILDMIDI

PLUGIN_DSP_EFFECTS_DESC=	DSP effects
OPTIONS_GROUP_PLUGIN_DSP_EFFECTS=	BS2B CROSSFADE LADSPA SOXR STEREO

PLUGIN_VISUAL_EFFECTS_DESC=	Visual effects
OPTIONS_GROUP_PLUGIN_VISUAL_EFFECTS=	ANALYZER PROJECTM

PLUGIN_OUTPUT_DESC=	Output sound systems
OPTIONS_GROUP_PLUGIN_OUTPUT=	ALSA JACK NULLOUT OSS OSS4 \
		PULSEAUDIO QTMULTIMEDIA

PLUGIN_PLAYLIST_DESC=	Playlist operation
OPTIONS_GROUP_PLUGIN_PLAYLIST=	COPYPASTE FILEOPS HAL \
		TRACKCHANGE UDISKS UDISKS2

PLUGIN_NETWORKING_DESC=	Features via the Net
OPTIONS_GROUP_PLUGIN_NETWORKING=	COVER CURL LYRICS MMS SB SCROBBLER

MISC_DESC=	Other features
OPTIONS_GROUP_MISC=	CONVERTER CUE MPLAYER MPRIS RGSCAN SID

OPTIONS_DEFAULT=	APP ALSA ANALYZER BS2B CDDA CONVERTER COPYPASTE COVER \
		CROSSFADE CUE CURL FAAD FFMPEG FILEOPS FLAC \
		GNOMEHOTKEY GME HAL HOTKEY JACK KDENOTIFY LADSPA LYRICS MAD \
		MMS MODPLUG MPRIS MPLAYER MUSEPACK NOTIFIER NULLOUT \
		OPUS OSS4 PROJECTM PULSEAUDIO QMMP_DIALOG QSUI QTMULTIMEDIA \
		RGSCAN SB SCROBBLER SID SKINNEDUI SNDFILE SOXR STATICON STEREO \
		TRACKCHANGE TWOPANELDIALOG UDISKS2 VORBIS WAVPACK WILDMIDI

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

APP_DESC=	QMMP Main application
APP_RUN_DEPENDS=	${LOCALBASE}/bin/qmmp:multimedia/qmmp-app
GNOMEHOTKEY_DESC=	Support GNOME/Cinnamon shortcut keys
GNOMEHOTKEY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libgnomehotkey.so:accessibility/qmmp-plugin-gnomehotkey
HOTKEY_DESC=	Support global shortcut keys
HOTKEY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhotkey.so:accessibility/qmmp-plugin-hotkey
NOTIFIER_DESC=	Support to popup notifier
NOTIFIER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libnotifier.so:deskutils/qmmp-plugin-notifier
KDENOTIFY_DESC=	Support to popup notifier for KDE
KDENOTIFY_RUN_DEPENDS=	${QMMPLIBDIR}/General/libkdenotify.so:deskutils/qmmp-plugin-kdenotify
QMMP_DIALOG_DESC=	An original filedialog
QMMP_DIALOG_RUN_DEPENDS=	${QMMPLIBDIR}/FileDialogs/libqmmpfiledialog.so:x11-fm/qmmp-plugin-filedialog
QSUI_DESC=		Simple UI based on standard widgets set
QSUI_RUN_DEPENDS=	${QMMPLIBDIR}/Ui/libqsui.so:multimedia/qmmp-plugin-qsui
SKINNEDUI_DESC=	Skinned GUI
SKINNEDUI_RUN_DEPENDS=	${QMMPLIBDIR}/Ui/libskinned.so:multimedia/qmmp-plugin-skinned
STATICON_DESC=	Show status icon
STATICON_RUN_DEPENDS=	${QMMPLIBDIR}/General/libstatusicon.so:multimedia/qmmp-plugin-staticon
TWOPANELDIALOG_DESC=	File dialog by two-panel selector
TWOPANELDIALOG_RUN_DEPENDS=	${QMMPLIBDIR}/FileDialogs/libtwopanelfiledialog.so:x11-fm/qmmp-plugin-twopanelfiledialog

DOXYGEN_RUN_DEPENDS=	${DOCSDIR}/html/index.html:multimedia/qmmp-reference

CDDA_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libcdaudio.so:audio/qmmp-plugin-cdda
FAAD_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libaac.so:audio/qmmp-plugin-faad
FFMPEG_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffmpeg.so:multimedia/qmmp-plugin-ffmpeg
FLAC_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libflac.so:audio/qmmp-plugin-flac
GME_DESC=		Support video game music files
GME_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libgme.so:games/qmmp-plugin-gme
MAD_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmad.so:audio/qmmp-plugin-mad
MODPLUG_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmodplug.so:audio/qmmp-plugin-modplug
MUSEPACK_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpc.so:audio/qmmp-plugin-musepack
OPUS_DESC=		Enable reading opusfile tags
OPUS_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libopus.so:audio/qmmp-plugin-opus
SNDFILE_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libsndfile.so:audio/qmmp-plugin-sndfile
VORBIS_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libvorbis.so:audio/qmmp-plugin-vorbis
WAVPACK_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libwavpack.so:audio/qmmp-plugin-wavpack
WILDMIDI_DESC=	Support to playback MIDI files
WILDMIDI_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libwildmidi.so:audio/qmmp-plugin-wildmidi

BS2B_DESC=		Support the Bauer stereophonic2binaural effect
BS2B_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libbs2b.so:audio/qmmp-plugin-bs2b
CROSSFADE_DESC=	Support cross-fade effect
CROSSFADE_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libcrossfade.so:audio/qmmp-plugin-crossfade
LADSPA_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libladspa.so:audio/qmmp-plugin-ladspa
SOXR_DESC=	Support SoX Resampler
SOXR_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libsoxr.so:audio/qmmp-plugin-soxr
STEREO_DESC=	Support stereo effect
STEREO_RUN_DEPENDS=	${QMMPLIBDIR}/Effect/libstereo.so:audio/qmmp-plugin-stereo

ANALYZER_DESC=	Support spectrum analyzer visualization
ANALYZER_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libanalyzer.so:multimedia/qmmp-plugin-analyzer
PROJECTM_DESC=	Support the projectM music visualiser
PROJECTM_RUN_DEPENDS=	${QMMPLIBDIR}/Visual/libprojectm.so:graphics/qmmp-plugin-projectm

ALSA_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libalsa.so:audio/qmmp-plugin-alsa
JACK_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libjack.so:audio/qmmp-plugin-jack
NULLOUT_DESC=	Support null output
NULLOUT_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libnull.so:audio/qmmp-plugin-nullout
OSS_RUN_DEPENDS=	${QMMPLIBDIR}/Output/liboss.so:audio/qmmp-plugin-oss
OSS4_DESC=		Open Sound System (ver4) support
OSS4_RUN_DEPENDS=	${QMMPLIBDIR}/Output/liboss4.so:audio/qmmp-plugin-oss4
PULSEAUDIO_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libpulseaudio.so:audio/qmmp-plugin-pulseaudio
QTMULTIMEDIA_DESC=	Support to use Qt low-level multimedia API
QTMULTIMEDIA_RUN_DEPENDS=	${QMMPLIBDIR}/Output/libqtmultimedia.so:multimedia/qmmp-plugin-qtmultimedia

COPYPASTE_DESC=	Enable copy/paste track infos between playlists
COPYPASTE_RUN_DEPENDS=	${QMMPLIBDIR}/General/libcopypaste.so:misc/qmmp-plugin-copypaste
FILEOPS_DESC=	Support file operation
FILEOPS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libfileops.so:sysutils/qmmp-plugin-fileops
HAL_RUN_DEPENDS=	${QMMPLIBDIR}/General/libhal.so:sysutils/qmmp-plugin-hal
TRACKCHANGE_DESC=	Enable to run external command each track switching
TRACKCHANGE_RUN_DEPENDS=	${QMMPLIBDIR}/General/libtrackchange.so:misc/qmmp-plugin-trackchange
UDISKS_DESC=	Support removable disc detection (obsolete)
UDISKS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libudisks.so:sysutils/qmmp-plugin-udisks
UDISKS2_DESC=	Support removable disc detection using UDisks
UDISKS2_RUN_DEPENDS=	${QMMPLIBDIR}/General/libudisks2.so:sysutils/qmmp-plugin-udisks2

COVER_DESC=	Support to show cover images
COVER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libcovermanager.so:graphics/qmmp-plugin-coverart
CURL_RUN_DEPENDS=	${QMMPLIBDIR}/Transports/libhttp.so:ftp/qmmp-plugin-curl
LYRICS_DESC=	Support to show lyrics using lyrics.wikia.com
LYRICS_RUN_DEPENDS=	${QMMPLIBDIR}/General/liblyrics.so:audio/qmmp-plugin-lyrics
MMS_RUN_DEPENDS=	${QMMPLIBDIR}/Transports/libmms.so:net/qmmp-plugin-mms
SB_DESC=	Browser for IceCast stream directory
SB_RUN_DEPENDS=	${QMMPLIBDIR}/General/libstreambrowser.so:audio/qmmp-plugin-streambrowser
SCROBBLER_DESC=	Support Libre.fm/Last.fm scrobbler feature
SCROBBLER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libscrobbler.so:net/qmmp-plugin-scrobbler

MPLAYER_RUN_DEPENDS=	${QMMPLIBDIR}/Engines/libmplayer.so:multimedia/qmmp-plugin-mplayer
CONVERTER_DESC=	Support file type converter
CONVERTER_RUN_DEPENDS=	${QMMPLIBDIR}/General/libconverter.so:audio/qmmp-plugin-converter
CUE_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libcue.so:audio/qmmp-plugin-cue
MPRIS_DESC=	Support the Media Player Remote
MPRIS_RUN_DEPENDS=	${QMMPLIBDIR}/General/libmpris.so:audio/qmmp-plugin-mpris
RGSCAN_DESC=	ReplayGain scanner
RGSCAN_RUN_DEPENDS=	${QMMPLIBDIR}/General/librgscan.so:audio/qmmp-plugin-rgscan
SID_DESC=	Support sid
SID_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libsid.so:audio/qmmp-plugin-sid

.include <bsd.port.mk>
