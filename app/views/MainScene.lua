
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

require("Hero")

function MainScene:onCreate()
    -- add background image
    display.newSprite("HelloWorld.png")
        :move(display.center)
        :addTo(self)

    -- add HelloWorld label
    cc.Label:createWithSystemFont("Hello World", "Arial", 40)
        :move(display.cx, display.cy + 200)
        :addTo(self)


        local function nextButtonCallback(tag, sender)
            local gameData = require("GameData"):getInstance():setOid(11)
        end
        
        local nextButton = cc.MenuItemFont:create("Please Click Me To Go!")
        nextButton:registerScriptTapHandler(nextButtonCallback)
        nextButton:setPosition(cc.p(200,200))

        local function btCallback(tag, sender)
            local oid = require("GameData"):getInstance():getOid()
            print("oid",oid)
        end

        local avilibalPath = cc.FileUtils:getInstance():getWritablePath()
        print("avilibalPath",avilibalPath)

        local hero = Hero.new()
        print("hero.name",hero.name)

        local second = cc.MenuItemFont:create("second!")
        second:registerScriptTapHandler(btCallback)
        second:setPosition(cc.p(400,200))

        local menu = cc.Menu:create(nextButton)
        menu:addChild(second)
        menu:setPosition(cc.p(100,100))
        menu:setAnchorPoint(cc.p(0,0))
        self:addChild(menu)

end

return MainScene
