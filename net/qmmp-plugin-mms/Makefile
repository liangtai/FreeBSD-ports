# $FreeBSD$

PORTNAME=	qmmp-plugin-mms
CATEGORIES=	net multimedia

COMMENT=	MMS streaming plug-in of QMMP

LIB_DEPENDS+=	libmms.so:${PORTSDIR}/net/libmms

QMMPPLUGIN_TARGET=	Transports/mms
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
