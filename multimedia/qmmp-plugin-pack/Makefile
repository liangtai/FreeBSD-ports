# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.8.5
CATEGORIES=	multimedia
MASTER_SITES=	# empty
DISTFILES=	#empty
EXTRACT_ONLY=	# empty

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Meta-port of additional QMMP plugins

USES=		metaport

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 QSUI
OPTIONS_DEFAULT=	FFAP MPG123 QSUI

QMMPLIBDIR=	${LOCALBASE}/lib/qmmp

FFAP_DESC=		Support APE sound file
FFAP_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libffap.so:${PORTSDIR}/audio/qmmp-plugin-ffap
MPG123_RUN_DEPENDS=	${QMMPLIBDIR}/Input/libmpg123.so:${PORTSDIR}/audio/qmmp-plugin-mpg123
QSUI_DESC=		Simple UI based on standard widgets set
QSUI_RUN_DEPENDS=	${QMMPLIBDIR}/Ui/libqsui.so:${PORTSDIR}/multimedia/qmmp-plugin-qsui

.include <bsd.port.mk>
