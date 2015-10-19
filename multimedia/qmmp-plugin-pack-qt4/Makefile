# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.9.2
CATEGORIES=	multimedia
MASTER_SITES=	# empty
EXTRACT_ONLY=	# empty
PKGNAMESUFFIX=	-qt4

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of additional QMMP (Qt4) plugins

LICENSE=	GPLv2

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 XMP
OPTIONS_DEFAULT=	FFAP MPG123 XMP

QTFOUR!=	pkg info -l qmmp-qt4-lib | \
	sed -n 's|^[[:space:]]*/usr/local/lib/libqmmp\(.*\)\.so$$|\1|p'
QMMPLIBDIR=	${LOCALBASE}/lib/qmmp${QTFOUR}

FFAP_DESC=		Support APE sound file
FFAP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffap.so:${PORTSDIR}/audio/qmmp-qt4-plugin-ffap
MPG123_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpg123.so:${PORTSDIR}/audio/qmmp-qt4-plugin-mpg123
XMP_DESC=	Support various module formats with libxmp
XMP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libxmp.so:${PORTSDIR}/audio/qmmp-qt4-plugin-xmp

PKG_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

.include <bsd.port.mk>
