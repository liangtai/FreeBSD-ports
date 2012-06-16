# New ports collection Makefile for:	qmmp
# Date created:		Fri Jan 30 01:13:20 JST 2009
# Whom:      SimaMoto,RyoTa <liangtai.s4@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	qmmp
PORTVERSION=	0.5.6
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	liangtai.s4@gmail.com
COMMENT=	A Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS=	mad.2:${PORTSDIR}/audio/libmad \
		sndfile.1:${PORTSDIR}/audio/libsndfile \
		ogg.7:${PORTSDIR}/audio/libogg \
		vorbis.4:${PORTSDIR}/audio/libvorbis \
		wavpack.2:${PORTSDIR}/audio/wavpack \
		tag.1:${PORTSDIR}/audio/taglib \
		curl.6:${PORTSDIR}/ftp/curl \
		mms.0:${PORTSDIR}/net/libmms

USE_BZIP2=	yes
USE_QT_VER=	4
USE_GMAKE=	yes
QT_COMPONENTS=	corelib gui network xml dbus \
		qmake_build rcc_build uic_build moc_build linguist_build
USE_LDCONFIG=	yes

OPTONS_DEFINE=	ALSA APIDOC BS2B CDIO ENCA FAAD FFMPEG FLAC GME JACK \
		LADSPA MODPLUG MPLAYER MUSEPACK OSS OSS4 PROJECTM PULSEAUDIO \
		SKINNEDUI WILDMIDI
OPTIONS_DEFAULT= ALSA BS2B CDIO ENCA FAAD FFMPEG FLAC GME JACK \
		LADSPA MODPLUG MPLAYER MUSEPACK OSS OSS4 PROJECTM PULSEAUDIO \
		SKINNEDUI WILDMIDI
APIDOC_DESC=	Doxygen generated class reference document
BS2B_DESC=	Support the Bauer stereophonic2binaural effect
CDIO_DESC=	Support to playback compact discs
ENCA_DESC=	Support automatic character set detection
GME_DESC=	Support video game music files
MPLAYER_DESC=	Support VIDEO playback through Mplayer
OSS_DESC=	Support the OSS output
OSS4_DESC=	Support the OSS4 output
PROJECTM_DESC=	Support the projectM music visualiser
SKINNEDUI_DESC=	Skinned GUI
WILDMIDI_DESC=	Support to playback MIDI files

.include <bsd.port.pre.mk>

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
LIB_DEPENDS+=	jack.0:${PORTSDIR}/audio/jack
BUILD_DEPENDS+=	jackit>=0.121.2:${PORTSDIR}/audio/jack
PLUGIN_OPTIONS+=	JACK_PLUGIN
.else
PLIST_SUB+=	JACK="@comment "
.endif

.if ${PORT_OPTIONS:MALSA}
PLIST_SUB+=	ALSA=""
LIB_DEPENDS+=	asound.2:${PORTSDIR}/audio/alsa-lib
PLUGIN_OPTIONS+=	ALSA_PLUGIN
.else
PLIST_SUB+=	ALSA="@comment "
.endif

.if ${PORT_OPTIONS:MBS2B}
PLIST_SUB+=	BS2B=""
LIB_DEPENDS+=	bs2b.0:${PORTSDIR}/audio/libbs2b
PLUGIN_OPTIONS+=	BS2B_PLUGIN
.else
PLIST_SUB+=	BS2B="@comment "
.endif

.if ${PORT_OPTIONS:MPULSEAUDIO}
PLIST_SUB+=	PULSE_AUDIO=""
LIB_DEPENDS+=	pulse.0:${PORTSDIR}/audio/pulseaudio
PLUGIN_OPTIONS+=	PULSE_AUDIO_PLUGIN
.else
PLIST_SUB+=	PULSE_AUDIO="@comment "
.endif

.if ${PORT_OPTIONS:MFLAC}
PLIST_SUB+=	FLAC=""
LIB_DEPENDS+=	FLAC.10:${PORTSDIR}/audio/flac
PLUGIN_OPTIONS+=	FLAC_PLUGIN
.else
PLIST_SUB+=	FLAC="@comment "
.endif

.if ${PORT_OPTIONS:MMUSEPACK}
PLIST_SUB+=	MUSEPACK=""
LIB_DEPENDS+=	mpcdec.7:${PORTSDIR}/audio/musepack
PLUGIN_OPTIONS+=	MUSEPACK_PLUGIN
.else
PLIST_SUB+=	MUSEPACK="@comment "
.endif

.if ${PORT_OPTIONS:MGME}
PLIST_SUB+=	GME=""
LIB_DEPENDS+=	gme.0:${PORTSDIR}/audio/libgme
PLUGIN_OPTIONS+=	GME_PLUGIN
.else
PLIST_SUB+=	GME="@comment "
.endif

.if ${PORT_OPTIONS:MFFMPEG}
PLIST_SUB+=	FFMPEG=""
. if exists(${LOCALBASE}/include/libavcodec/vda.h)
LIB_DEPENDS+=	avcodec.1:${PORTSDIR}/multimedia/ffmpeg-devel
. else
LIB_DEPENDS+=	avcodec.1:${PORTSDIR}/multimedia/ffmpeg
. endif
PLUGIN_OPTIONS+=	FFMPEG_PLUGIN
.else
PLIST_SUB+=	FFMPEG="@comment "
.endif

.if ${PORT_OPTIONS:MMODPLUG}
PLIST_SUB+=	MODPLUG=""
LIB_DEPENDS+=	modplug.1:${PORTSDIR}/audio/libmodplug
PLUGIN_OPTIONS+=	MODPLUG_PLUGIN
.else
PLIST_SUB+=	MODPLUG="@comment "
.endif

.if ${PORT_OPTIONS:MFAAD}
PLIST_SUB+=	FAAD=""
LIB_DEPENDS+=	faad.2:${PORTSDIR}/audio/faad
PLUGIN_OPTIONS+=	AAC_PLUGIN
.else
PLIST_SUB+=	FAAD="@comment "
.endif

.if ${PORT_OPTIONS:MCDIO}
PLIST_SUB+=	CDIO=""
LIB_DEPENDS+=	cdio.13:${PORTSDIR}/sysutils/libcdio
PLUGIN_OPTIONS+=	CDAUDIO_PLUGIN
.else
PLIST_SUB+=	CDIO="@comment "
.endif

.if ${PORT_OPTIONS:MENCA}
PLIST_SUB+=	ENCA=""
LIB_DEPENDS+=	enca.5:${PORTSDIR}/converters/enca
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
LIB_DEPENDS+=	WildMidi.2:${PORTSDIR}/audio/wildmidi
PLUGIN_OPTIONS+=	WILDMIDI_PLUGIN
.else
PLIST_SUB+=	WILDMIDI="@comment "
.endif

PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//}

PORTDOCS=	README README.RUS AUTHORS
SUB_FILES=	qmmp
INSTALLS_ICONS=	yes

QMAKE_ARGS+=	CONFIG+="${PLUGIN_OPTIONS}" PREFIX=${PREFIX} \
		LIB_DIR=${PREFIX}/lib
MAKE_ENV+=	INSTALL_PREFIX=${PREFIX}

post-patch:
	${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG +=|' \
		${WRKSRC}/qmmp.pri
	${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro
	${REINPLACE_CMD} -e 's| /bin| /libexec|' ${WRKSRC}/src/ui/ui.pro

do-configure:
	${FIND} ${WRKSRC} -name Makefile -delete
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
.if ${PORT_OPTIONS:MSKINNEDUI}
	${INSTALL_SCRIPT} ${WRKDIR}/qmmp ${PREFIX}/bin
.endif
.ifndef(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MAPIDOC}
	${MKDIR} ${DOCSDIR}/html/search ; \
	cd ${WRKSRC}/doc/html && ${INSTALL_MAN} *.html *.png *.css ${DOCSDIR}/html ; \
	cd ${WRKSRC}/doc/html/search && ${INSTALL_MAN} *.html *.png *.css *.js ${DOCSDIR}/html/search ; \
	${RM} -f ${WRKDIR}/PLIST.doc ; \
	${FIND} ${DOCSDIR}/html -type f | ${SED} 's|${PREFIX}/||' \
	>> ${WRKDIR}/PLIST.doc ; \
	${FIND} ${DOCSDIR}/html -type d | ${SED} 's|${PREFIX}/|@dirrm |' \
	| ${SORT} -r >> ${WRKDIR}/PLIST.doc ; \
	cd ${WRKDIR} ; ${SED} -i -e '/PLIST.doc/ r PLIST.doc' ${TMPPLIST}
.endif

.include <bsd.port.post.mk>
