include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-eqos
PKG_VERSION:=1
PKG_RELEASE:=3-20210915

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-eqos
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI support for EQOS
	PKGARCH:=all
	DEPENDS:=+luci-base +tc +kmod-sched-core +kmod-ifb
	MAINTAINER:=Jianhui Zhao <jianhuizhao329@gmail.com>
endef

define Build/Compile
endef

define Package/luci-app-eqos/conffiles
	/etc/config/eqos
endef

define Package/luci-app-eqos/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp -pR ./luasrc/* $(1)/usr/lib/lua/luci
	$(INSTALL_DIR) $(1)/
	cp -pR ./root/* $(1)/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./po/zh-cn/eqos.po $(1)/usr/lib/lua/luci/i18n/eqos.zh-cn.lmo
endef

$(eval $(call BuildPackage,luci-app-eqos))
