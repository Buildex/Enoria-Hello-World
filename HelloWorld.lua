local e = require(_G.EnoriaPath)
local Widget = require(_G.EnoriaPath.Parent.Widgets.Widget)

local HelloWorld = {}
HelloWorld.__index = HelloWorld
setmetatable(HelloWorld, Widget)

function HelloWorld.new(context)
   local self = Widget.new(nil, nil, context)
   setmetatable(self, HelloWorld)

   -- Create state attributes here

   return self
end

function HelloWorld:Build()
   local tree = self:BuildTree(
       e.TextLabel("Hello, World!")
   )

   return tree
end

return HelloWorld
