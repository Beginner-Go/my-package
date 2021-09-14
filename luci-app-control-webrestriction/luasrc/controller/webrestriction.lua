module("luci.controller.webrestriction", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/webrestriction") then
		return
	end
	
	entry({"admin", "control"}, firstchild(), "Control", 50).dependent = false
	entry({"admin", "control", "webrestriction"}, cbi("webrestriction"), _("webrestriction"), 11).dependent = true
	entry({"admin", "control", "webrestriction", "status"}, call("act_status")).leaf = true
end

function act_status()
	local e = {}
	e.running = luci.sys.call("iptables -L FORWARD |grep WEB_RESTRICTION >/dev/null") == 0
	luci.http.prepare_content("application/json")
	luci.http.write_json(e)
end
