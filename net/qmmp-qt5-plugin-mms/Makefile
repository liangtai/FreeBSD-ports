# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-mms
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	net multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MMS streaming plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmms.so:${PORTSDIR}/net/libmms

QMMPPLUGIN_TARGET=	Transports/mms
QMMPPLUGIN_TAG=	MMS

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
