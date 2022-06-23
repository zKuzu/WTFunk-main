-- Lua stuff
local squish = 80
local del = 0;
local del2 = 0;
function onCreate()
	-- background shit
	makeLuaSprite('BG', '2004', -500, -300);
	setScrollFactor('BG', 0.9, 0.9);
    makeLuaSprite('barleft','',-4,0)
    makeGraphic('barleft',163,882,'000000')
    makeLuaSprite('barright','',1119,0)
    makeGraphic('barright',162,882,'000000')
    setScrollFactor('barleft',0,0)
    setObjectCamera('barleft','hud')
    setScrollFactor('barright',0,0)
    setObjectCamera('barright','hud')
    makeAnimatedLuaSprite('edd', 'Edd vid cola, hippe', -300, 220);
	luaSpriteAddAnimationByPrefix('edd', 'idle', 'edddark', 24, true);
	makeAnimatedLuaSprite('tom', 'toms personel hell', 990, 210);
	luaSpriteAddAnimationByPrefix('tom', 'idle', 'tomdark', 24, true);
	addLuaSprite('BG', false);
    addLuaSprite('edd',  false)
    addLuaSprite('tom',  false)
    addLuaSprite('barleft',true)
    addLuaSprite('barright',true)
end

function onUpdate(elapsed)

    if not middlescroll then
        noteTweenX('0',0,defaultOpponentStrumX0 + squish,0.15,'linear')
        noteTweenX('1',1,defaultOpponentStrumX1 + squish,0.15,'linear')
        noteTweenX('2',2,defaultOpponentStrumX2 + squish,0.15,'linear')
        noteTweenX('3',3,defaultOpponentStrumX3 + squish,0.15,'linear')
        noteTweenX('4',4,defaultPlayerStrumX0 - squish,0.01,'linear')
        noteTweenX('5',5,defaultPlayerStrumX1 - squish,0.01,'linear')
        noteTweenX('6',6,defaultPlayerStrumX2 - squish,0.01,'linear')
        noteTweenX('7',7,defaultPlayerStrumX3 - squish,0.01,'linear')

    end

    if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

end