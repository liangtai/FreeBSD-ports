# $FreeBSD$

PORTNAME=	qmmp-plugin-mms
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	net multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MMS streaming plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmms.so:${PORTSDIR}/net/libmms

QMMPPLUGIN_TARGET=	Transports/mms
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
