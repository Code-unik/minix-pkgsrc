# $NetBSD: Makefile,v 1.2 2009/07/17 18:00:14 adrianp Exp $
#

DISTNAME=	mysql-connector-java-3.1.14
PKGNAME=	${DISTNAME:S/mysql-connector-java/jdbc-mysql/}
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_MYSQL:=Connector-J/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://dev.mysql.com/doc/refman/5.0/en/connector-j.html
COMMENT=	MySQL 3.1 JDBC driver

USE_JAVA=	run
USE_JAVA2=	1.5
NO_BUILD=	yes

DOCDIR=		share/doc/${PKGBASE}
PLIST_SUBST+=	DISTNAME=${DISTNAME:Q}

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/lib/java
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/${DOCDIR}

	${INSTALL_DATA} ${WRKSRC}/${DISTNAME}-bin.jar \
		${DESTDIR}${PREFIX}/lib/java
	${INSTALL_DATA} ${WRKSRC}/docs/README ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/connector-j.html ${DESTDIR}${PREFIX}/${DOCDIR}

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
