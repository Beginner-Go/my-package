include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-control-webrestriction
PKG_VERSION:=1.0
PKG_RELEASE:=6-20211118

LUCI_TITLE:=LuCI support for Webrestriction
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+iptables-mod-filter +kmod-ipt-filter

define Package/$(PKG_NAME)/conffiles
/etc/config/webrestriction
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
