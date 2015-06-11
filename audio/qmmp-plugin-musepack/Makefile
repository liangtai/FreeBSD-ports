# $FreeBSD$

PORTNAME=	qmmp-plugin-musepack
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Musepack file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libmpcdec.so:${PORTSDIR}/audio/musepack \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/mpc
QMMPPLUGIN_OPTIONS=	MUSEPACK_PLUGIN

post-patch:
	@${GREP} -L '${LOCALBASE}/include' \
		${WRKSRC}/src/plugins/Input/mpc/mpc.pro | ${XARGS} \
		${REINPLACE_CMD} -e 's|/usr/|${LOCALBASE}/|g'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
