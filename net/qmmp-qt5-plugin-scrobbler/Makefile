# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-scrobbler
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	net multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Libre.fm/Last.fm scrobbler plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT5+=	network

QMMPPLUGIN_TARGET=	General/scrobbler
QMMPPLUGIN_TAG=	SCROBBLER

post-patch:
# https://sourceforge.net/p/qmmp-dev/code/6598/
	@${GREP} -l 'query(QUrl::FullyDecoded)' \
		${WRKSRC}/src/plugins/General/scrobbler/scrobbler.cpp | ${XARGS} \
		${REINPLACE_CMD} -e '/query/s/FullyDecoded/FullyEncoded/'

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
