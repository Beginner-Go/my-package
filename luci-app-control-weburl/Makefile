include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-control-weburl
PKG_VERSION:=1.0
PKG_RELEASE:=3-20210915

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-control-weburl
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI support for Weburl
	PKGARCH:=all
	DEPENDS:=+iptables-mod-filter +kmod-ipt-filter
endef

define Build/Compile
endef

define Package/luci-app-control-weburl/conffiles
	/etc/config/weburl
endef

define Package/luci-app-control-weburl/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp -pR ./luasrc/* $(1)/usr/lib/lua/luci
	$(INSTALL_DIR) $(1)/
	cp -pR ./root/* $(1)/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./po/zh-cn/weburl.po $(1)/usr/lib/lua/luci/i18n/weburl.zh-cn.lmo
endef

$(eval $(call BuildPackage,luci-app-control-weburl))
