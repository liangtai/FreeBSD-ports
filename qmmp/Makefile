# New ports collection Makefile for:	qmmp
# Date created:		Fri Jan 30 01:13:20 JST 2009
# Whom:      SimaMoto,RyoTa <liangtai.s4@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	qmmp
PORTVERSION=	0.6.3
PORTREVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
		${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	liangtai.s4@gmail.com
COMMENT=	A Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS=	mad:${PORTSDIR}/audio/libmad \
		sndfile:${PORTSDIR}/audio/libsndfile \
		ogg:${PORTSDIR}/audio/libogg \
		vorbis:${PORTSDIR}/audio/libvorbis \
		wavpack:${PORTSDIR}/audio/wavpack \
		tag:${PORTSDIR}/audio/taglib \
		curl:${PORTSDIR}/ftp/curl \
		mms:${PORTSDIR}/net/libmms

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_QT4=	corelib gui network xml dbus \
		qmake_build rcc_build uic_build moc_build linguist_build
USE_LDCONFIG=	yes

OPTIONS_SINGLE=	FFMPEG
OPTIONS_SINGLE_FFMPEG=	FFMPEG0_7 FFMPEG0_11 FFMPEG1_0 FFMPEGDEVEL
OPTIONS_DEFINE=	ALSA APIDOC BS2B CDIO ENCA FAAD FFMPEG FLAC GME JACK \
		LADSPA MODPLUG MPLAYER MUSEPACK OSS OSS4 PROJECTM PULSEAUDIO \
		SKINNEDUI WILDMIDI
OPTIONS_DEFAULT= ALSA BS2B CDIO ENCA FAAD FFMPEG FFMPEG1_0 FLAC GME \
		JACK LADSPA MODPLUG MPLAYER MUSEPACK OSS4 PROJECTM \
		PULSEAUDIO SKINNEDUI WILDMIDI
APIDOC_DESC=	Doxygen generated doc (libqmmp libqmmpui)
BS2B_DESC=	Support the Bauer stereophonic2binaural effect
CDIO_DESC=	Support to playback compact discs
ENCA_DESC=	Support automatic character set detection
GME_DESC=	Support video game music files
OSS4_DESC=	Open Sound System (ver4) support
PROJECTM_DESC=	Support the projectM music visualiser
SKINNEDUI_DESC=	Skinned GUI
WILDMIDI_DESC=	Support to playback MIDI files
FFMPEG0_7_DESC=	ffmpeg-0.7.x (multimedia/ffmpeg)
FFMPEG0_11_DESC=	ffmpeg-0.11.x (multimedia/ffmpeg-011)
FFMPEG1_0_DESC=	ffmpeg-1.0 (multimedia/ffmpeg1)
FFMPEGDEVEL_DESC=	ffmpeg-devel (multimedia/ffmpeg-devel)

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
LIB_DEPENDS+=	jack:${PORTSDIR}/audio/jack
PLUGIN_OPTIONS+=	JACK_PLUGIN
.else
PLIST_SUB+=	JACK="@comment "
.endif

.if ${PORT_OPTIONS:MALSA}
PLIST_SUB+=	ALSA=""
LIB_DEPENDS+=	asound:${PORTSDIR}/audio/alsa-lib
PLUGIN_OPTIONS+=	ALSA_PLUGIN
.else
PLIST_SUB+=	ALSA="@comment "
.endif

.if ${PORT_OPTIONS:MBS2B}
PLIST_SUB+=	BS2B=""
LIB_DEPENDS+=	bs2b:${PORTSDIR}/audio/libbs2b
PLUGIN_OPTIONS+=	BS2B_PLUGIN
.else
PLIST_SUB+=	BS2B="@comment "
.endif

.if ${PORT_OPTIONS:MPULSEAUDIO}
PLIST_SUB+=	PULSE_AUDIO=""
LIB_DEPENDS+=	pulse:${PORTSDIR}/audio/pulseaudio
PLUGIN_OPTIONS+=	PULSE_AUDIO_PLUGIN
.else
PLIST_SUB+=	PULSE_AUDIO="@comment "
.endif

.if ${PORT_OPTIONS:MFLAC}
PLIST_SUB+=	FLAC=""
LIB_DEPENDS+=	FLAC:${PORTSDIR}/audio/flac
PLUGIN_OPTIONS+=	FLAC_PLUGIN
.else
PLIST_SUB+=	FLAC="@comment "
.endif

.if ${PORT_OPTIONS:MMUSEPACK}
PLIST_SUB+=	MUSEPACK=""
LIB_DEPENDS+=	mpcdec:${PORTSDIR}/audio/musepack
PLUGIN_OPTIONS+=	MUSEPACK_PLUGIN
.else
PLIST_SUB+=	MUSEPACK="@comment "
.endif

.if ${PORT_OPTIONS:MGME}
PLIST_SUB+=	GME=""
LIB_DEPENDS+=	gme:${PORTSDIR}/audio/libgme
PLUGIN_OPTIONS+=	GME_PLUGIN
.else
PLIST_SUB+=	GME="@comment "
.endif

.if ${PORT_OPTIONS:MFFMPEG}
. if ${PORT_OPTIONS:MFFMPEGDEVEL}
LIB_DEPENDS+=	avcodec:${PORTSDIR}/multimedia/ffmpeg-devel
FFMPEG_SUFFIX=	-devel
. else
.  if ${PORT_OPTIONS:MFFMPEG1_0}
LIB_DEPENDS+=	avcodec:${PORTSDIR}/multimedia/ffmpeg1
FFMPEG_SUFFIX=	1
.  else
.   if ${PORT_OPTIONS:MFFMPEG0_11}
LIB_DEPENDS+=	avcodec:${PORTSDIR}/multimedia/ffmpeg-011
FFMPEG_SUFFIX=	-011
.   else
LIB_DEPENDS+=	avcodec:${PORTSDIR}/multimedia/ffmpeg
FFMPEG_SUFFIX=
.   endif
.  endif
. endif
PLIST_SUB+=	FFMPEG=""
PLUGIN_OPTIONS+=	FFMPEG_PLUGIN
.else
PLIST_SUB+=	FFMPEG="@comment "
.endif

.if ${PORT_OPTIONS:MMODPLUG}
PLIST_SUB+=	MODPLUG=""
LIB_DEPENDS+=	modplug:${PORTSDIR}/audio/libmodplug
PLUGIN_OPTIONS+=	MODPLUG_PLUGIN
.else
PLIST_SUB+=	MODPLUG="@comment "
.endif

.if ${PORT_OPTIONS:MFAAD}
PLIST_SUB+=	FAAD=""
LIB_DEPENDS+=	faad:${PORTSDIR}/audio/faad
PLUGIN_OPTIONS+=	AAC_PLUGIN
.else
PLIST_SUB+=	FAAD="@comment "
.endif

.if ${PORT_OPTIONS:MCDIO}
PLIST_SUB+=	CDIO=""
LIB_DEPENDS+=	cdio:${PORTSDIR}/sysutils/libcdio
PLUGIN_OPTIONS+=	CDAUDIO_PLUGIN
.else
PLIST_SUB+=	CDIO="@comment "
.endif

.if exists(${LOCALBASE}/include/enca.h) || ${PORT_OPTIONS:MENCA}
PLIST_SUB+=	ENCA=""
LIB_DEPENDS+=	enca:${PORTSDIR}/converters/enca
PLUGIN_OPTIONS+=	WITH_ENCA
.else
PLIST_SUB+=	ENCA="@comment "
.endif

.if ${PORT_OPTIONS:MMPLAYER}
PLIST_SUB+=	MPLAYER=""
RUN_DEPENDS+=	mplayer:${PORTSDIR}/multimedia/mplayer
PLUGIN_OPTIONS+=	MPLAYER_PLUGIN
.else
PLIST_SUB+=	MPLAYER="@comment "
.endif

.if ${PORT_OPTIONS:MPROJECTM}
PLIST_SUB+=	PROJECTM=""
USE_QT4+=	opengl
LIB_DEPENDS+=	projectM.2:${PORTSDIR}/graphics/libprojectm
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

.if ${PORT_OPTIONS:MWILDMIDI}
PLIST_SUB+=	WILDMIDI=""
LIB_DEPENDS+=	WildMidi:${PORTSDIR}/audio/wildmidi
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
	${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |' \
		${WRKSRC}/qmmp.pri
	${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro

pre-configure:
	${REINPLACE_CMD} -e '/PKGCONFIG/ { ; \
	s|\(libavcodec\)[^ ]* |\1${FFMPEG_SUFFIX} |g; \
	s|\(libavformat\)[^ ]* |\1${FFMPEG_SUFFIX} |g; \
	s|\(libavutil\)[^ ]*$$|\1${FFMPEG_SUFFIX}|g; }' \
		${WRKSRC}/src/plugins/Input/ffmpeg/ffmpeg.pro
	${RM} -rf ${WRKSRC}/src/plugins/Input/ffmpeg/.build \
		${WRKSRC}/lib/qmmp/Input/libffmpeg.so
	${FIND} ${WRKSRC} -name Makefile -delete

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKE_ARGS}

post-build:
.if ${PORT_OPTIONS:MAPIDOC}
	cd ${WRKSRC}/doc && doxygen Doxyfile
.endif

pre-install:
.if ${PORT_OPTIONS:MSKINNEDUI}
	${STRIP_CMD} ${WRKSRC}/bin/qmmp
.endif

post-install:
.ifndef(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MAPIDOC}
	${MKDIR} ${DOCSDIR}/html/search ; \
	cd ${WRKSRC}/doc/html && \
		${INSTALL_MAN} *.html *.png *.css ${DOCSDIR}/html ; \
	cd ${WRKSRC}/doc/html/search && \
		${INSTALL_MAN} *.html *.png *.css *.js ${DOCSDIR}/html/search ; \
	${RM} -f ${WRKDIR}/PLIST.doc ; \
	${FIND} ${DOCSDIR}/html -type f | ${SED} 's|${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	${FIND} ${DOCSDIR}/html -type d | ${SED} 's|${PREFIX}/|@dirrm |' \
		| ${SORT} -r >> ${WRKDIR}/PLIST.doc ; \
	cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST}
.endif

.include <bsd.port.mk>
