# New ports collection Makefile for:	qmmp
# Date created:		Fri Jan 30 01:13:20 JST 2009
# Whom:      SimaMoto,RyoTa <liangtai.s4@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	qmmp
PORTVERSION=	0.5.3
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

OPTIONS= \
		APIDOC	"Doxygen generated class reference document" off \
		SKINNEDUI	"Skinned GUI" on \
		PULSE	"Support the PulseAudio output" on \
		ALSA	"Support the ALSA output" off \
		OSS	"Support the OSS output" on \
		OSS4	"Support the OSS4 output" on \
		JACK	"Support the JACK output" on \
		FLAC	"Support to playback FLAC files" on \
		MUSEPACK	"Support to playback MPC files" on \
		FFMPEG	"Support to playback FFMPEG files" on \
		MODPLUG "Support to playback MOD files" on \
		WILDMIDI	"Support to playback MIDI files" on \
		GME	"Support video game music files" on \
		FAAD	"Support to playback through FAAD decoder" on \
		CDIO	"Support to playback compact discs" on \
		LADSPA	"Support the LADSPA effect" on \
		BS2B	"Support the Bauer stereophonic2binaural effect" on \
		ENCA	"Support automatic charset detection" on \
		MPLAYER "Support VIDEO playback through Mplayer" on \
		PROJECTM	"Support the projectM music visualiser" on

.include <bsd.port.pre.mk>

.ifndef(WITHOUT_APIDOC)
BUILD_DEPENDS+=	doxygen:${PORTSDIR}/devel/doxygen
.endif

.ifndef(WITHOUT_SKINNEDUI)
PLIST_SUB+=	SKINNEDUI=""
PLUGIN_OPTIONS+=	WITH_SKINNED
.else
PLIST_SUB+=	SKINNEDUI="@comment "
.endif

.ifndef(WITHOUT_JACK)
PLIST_SUB+=	JACK=""
LIB_DEPENDS+=	jack.0:${PORTSDIR}/audio/jack
BUILD_DEPENDS+=	jackit>=0.121.2:${PORTSDIR}/audio/jack
PLUGIN_OPTIONS+=	JACK_PLUGIN
.else
PLIST_SUB+=	JACK="@comment "
.endif

.ifndef(WITHOUT_ALSA)
PLIST_SUB+=	ALSA=""
LIB_DEPENDS+=	asound.2:${PORTSDIR}/audio/alsa-lib
PLUGIN_OPTIONS+=	ALSA_PLUGIN
.else
PLIST_SUB+=	ALSA="@comment "
.endif

.ifndef(WITHOUT_BS2B)
PLIST_SUB+=	BS2B=""
LIB_DEPENDS+=	bs2b.0:${PORTSDIR}/audio/libbs2b
PLUGIN_OPTIONS+=	BS2B_PLUGIN
.else
PLIST_SUB+=	BS2B="@comment "
.endif

.ifndef(WITHOUT_PULSE)
PLIST_SUB+=	PULSE_AUDIO=""
LIB_DEPENDS+=	pulse.0:${PORTSDIR}/audio/pulseaudio
PLUGIN_OPTIONS+=	PULSE_AUDIO_PLUGIN
.else
PLIST_SUB+=	PULSE_AUDIO="@comment "
.endif

.ifndef(WITHOUT_FLAC)
PLIST_SUB+=	FLAC=""
LIB_DEPENDS+=	FLAC.10:${PORTSDIR}/audio/flac
PLUGIN_OPTIONS+=	FLAC_PLUGIN
.else
PLIST_SUB+=	FLAC="@comment "
.endif

.ifndef(WITHOUT_MUSEPACK)
PLIST_SUB+=	MUSEPACK=""
LIB_DEPENDS+=	mpcdec.7:${PORTSDIR}/audio/musepack
PLUGIN_OPTIONS+=	MUSEPACK_PLUGIN
.else
PLIST_SUB+=	MUSEPACK="@comment "
.endif

.ifndef(WITHOUT_GME)
PLIST_SUB+=	GME=""
LIB_DEPENDS+=	gme.0:${PORTSDIR}/audio/libgme
PLUGIN_OPTIONS+=	GME_PLUGIN
.else
PLIST_SUB+=	GME="@comment "
.endif

.ifndef(WITHOUT_FFMPEG)
PLIST_SUB+=	FFMPEG=""
LIB_DEPENDS+=	avcodec.1:${PORTSDIR}/multimedia/ffmpeg
PLUGIN_OPTIONS+=	FFMPEG_PLUGIN
.else
PLIST_SUB+=	FFMPEG="@comment "
.endif

.ifndef(WITHOUT_MODPLUG)
PLIST_SUB+=	MODPLUG=""
LIB_DEPENDS+=	modplug.1:${PORTSDIR}/audio/libmodplug
PLUGIN_OPTIONS+=	MODPLUG_PLUGIN
.else
PLIST_SUB+=	MODPLUG="@comment "
.endif

.ifndef(WITHOUT_FAAD)
PLIST_SUB+=	FAAD=""
LIB_DEPENDS+=	faad.2:${PORTSDIR}/audio/faad
PLUGIN_OPTIONS+=	AAC_PLUGIN
.else
PLIST_SUB+=	FAAD="@comment "
.endif

.ifndef(WITHOUT_CDIO)
PLIST_SUB+=	CDIO=""
LIB_DEPENDS+=	cdio.13:${PORTSDIR}/sysutils/libcdio
PLUGIN_OPTIONS+=	CDAUDIO_PLUGIN
.else
PLIST_SUB+=	CDIO="@comment "
.endif

.ifndef(WITHOUT_ENCA)
PLIST_SUB+=	ENCA=""
LIB_DEPENDS+=	enca.5:${PORTSDIR}/converters/enca
PLUGIN_OPTIONS+=	WITH_ENCA
.else
PLIST_SUB+=	ENCA="@comment "
.endif

.ifndef(WITHOUT_MPLAYER)
PLIST_SUB+=	MPLAYER=""
RUN_DEPENDS+=	mplayer:${PORTSDIR}/multimedia/mplayer
PLUGIN_OPTIONS+=	MPLAYER_PLUGIN
.else
PLIST_SUB+=	MPLAYER="@comment "
.endif

.ifndef(WITHOUT_PROJECTM)
PLIST_SUB+=	PROJECTM=""
LIB_DEPENDS+=	projectM.2:${PORTSDIR}/graphics/libprojectm
PLUGIN_OPTIONS+=	PROJECTM_PLUGIN WITH_PROJECTM20
.else
PLIST_SUB+=	PROJECTM="@comment "
.endif

.ifndef(WITHOUT_OSS)
PLIST_SUB+=	OSS=""
PLUGIN_OPTIONS+=	OSS_PLUGIN
.else
PLIST_SUB+=	OSS="@comment "
.endif

.ifndef(WITHOUT_OSS4)
PLIST_SUB+=	OSS4=""
BUILD_DEPENDS+= ${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss
PLUGIN_OPTIONS+=	OSS4_PLUGIN
.else
PLIST_SUB+=	OSS4="@comment "
.endif

.ifndef(WITHOUT_LADSPA)
PLIST_SUB+=	LADSPA=""
RUN_DEPENDS+=	analyseplugin:${PORTSDIR}/audio/ladspa
PLUGIN_OPTIONS+=	LADSPA_PLUGIN
.else
PLIST_SUB+=	LADSPA="@comment "
.endif

.ifndef(WITHOUT_WILDMIDI)
PLIST_SUB+=	WILDMIDI=""
LIB_DEPENDS+=	WildMidi.2:${PORTSDIR}/audio/wildmidi
PLUGIN_OPTIONS+=	WILDMIDI_PLUGIN
.else
PLIST_SUB+=	WILDMIDI="@comment "
.endif

PORTDOCS=	README README.RUS AUTHORS
SUB_FILES=	qmmp
INSTALLS_ICONS=	yes

QMAKE_ARGS+=	CONFIG+="${PLUGIN_OPTIONS}" PREFIX=${LOCALBASE} \
		LIB_DIR=${PREFIX}/lib
MAKE_ENV+=	INSTALL_PREFIX=${PREFIX}

post-patch:
	${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG +=|' \
		${WRKSRC}/qmmp.pri
	${REINPLACE_CMD} -e 's|/usr/|${PREFIX}/|g' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro
	${REINPLACE_CMD} -e 's| /bin| /libexec|' ${WRKSRC}/src/ui/ui.pro

do-configure:
	${FIND} ${WRKSRC} -name Makefile -delete
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKE_ARGS}

post-build:
.ifndef(WITHOUT_APIDOC)
	cd ${WRKSRC}/doc && doxygen Doxyfile
.endif

pre-install:
.ifndef(WITHOUT_SKINNEDUI)
	${STRIP_CMD} ${WRKSRC}/bin/qmmp
.endif

post-install:
.ifndef(WITHOUT_SKINNEDUI)
	${INSTALL_SCRIPT} ${WRKDIR}/qmmp ${PREFIX}/bin
.endif
.ifndef(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${DOCSDIR}
.endif
.ifndef(WITHOUT_APIDOC)
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
