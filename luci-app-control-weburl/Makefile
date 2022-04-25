include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-control-weburl
PKG_VERSION:=1.0
PKG_RELEASE:=3-20220422

LUCI_TITLE:=LuCI support for Weburl
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+iptables-mod-filter +kmod-ipt-filter

define Package/$(PKG_NAME)/conffiles
/etc/config/weburl
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
