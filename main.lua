
cc.FileUtils:getInstance():setPopupNotify(false)
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("src/app/views/")
cc.FileUtils:getInstance():addSearchPath("res/")

--这里添加平台相关的可读写目录只需要将需要更新的资源和代码放入改目录即可
cc.FileUtils:getInstance():addSearchPath("/Users/hanzhiqiang/Documents/")


require "config"
require "cocos.init"

local function main()
    require("app.MyApp"):create():run()
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
