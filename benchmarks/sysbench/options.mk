# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.sysbench
PKG_SUPPORTED_OPTIONS+= mysql pgsql

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmysql)
CONFIGURE_ARGS+=	--with-mysql=${BUILDLINK_PREFIX.mysql-client:Q}
.  include "../../mk/mysql.buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if !empty(PKG_OPTIONS:Mpgsql)
CONFIGURE_ARGS+=	--with-pgsql=${PGSQL_PREFIX:Q}
.  include "../../mk/pgsql.buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif
