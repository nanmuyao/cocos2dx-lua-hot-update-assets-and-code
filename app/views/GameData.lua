local GameData = class("GameData")

function GameData:getInstance()
    print("### getInstance")
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end

function GameData:ctor(args)
    print("### ctor")
    self.instance = nil

    self.playerModel = nil
    self.playManager = nil

end

function GameData:getOid()
    return self.Oid
end

function GameData:setOid(_Oid)
    print("_Oid",_Oid)
    self.Oid = _Oid
end

return GameData
