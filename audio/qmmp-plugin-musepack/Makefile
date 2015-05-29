# $FreeBSD$

PORTNAME=	qmmp-plugin-musepack
CATEGORIES=	audio multimedia

COMMENT=	musepack file format plug-in of QMMP

LIB_DEPENDS+=	libmpcdec.so:${PORTSDIR}/audio/musepack \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/mpc
QMMPPLUGIN_OPTIONS=	MUSEPACK_PLUGIN

post-patch:
	@${GREP} -L '${LOCALBASE}/include' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
