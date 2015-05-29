# $FreeBSD$

PORTNAME=	qmmp-plugin-oss4
CATEGORIES=	audio multimedia

COMMENT=	oss4 output plug-in of QMMP

BUILD_DEPENDS+=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss

QMMPPLUGIN_TARGET=	Output/oss4
QMMPPLUGIN_OPTIONS=	OSS4_PLUGIN

post-patch:
	@${GREP} -EL '${LOCALBASE}/lib/oss/include' \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
