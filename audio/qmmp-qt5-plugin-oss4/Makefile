# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-oss4
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	OSS version 4 output plug-in of QMMP (Qt5)

LICENSE=	GPLv2

BUILD_DEPENDS+=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss

QMMPPLUGIN_TARGET=	Output/oss4
QMMPPLUGIN_OPTIONS=	OSS4_PLUGIN

post-patch:
	@${GREP} -EL '${LOCALBASE}/lib/oss/include' \
		${WRKSRC}/src/plugins/Output/oss4/oss4.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
