require "battleship/entity"
require "battleship/point"
require "battleship/rectangle"

Reticle = Entity:new()
Reticle.__index = Reticle

function Reticle:new(o)
	o = o or Entity:new(o)
	setmetatable(o, Reticle)
	return o
end

function Reticle:dropmine(width, height)
	local point = Point:new{x = self.x - ((self.width - width) / 2), y = self.y + ((self.height - height) / 2)}
	return Rectangle:new{topleft = point, width = width, height = height}
end