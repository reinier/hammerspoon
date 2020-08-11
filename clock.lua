hs.loadSpoon("AClock")
-- hyper:bind({}, 't', nil, function()
--   spoon.AClock:toggleShow()
-- end)

local function showClock()
    spoon.AClock.textFont = "Helvetica Neue"
    -- spoon.AClock.format = "%H:%M"
    -- spoon.AClock.textColor = {hex="#FFFFFF"}
    spoon.AClock.width = 1280
    -- spoon.AClock.height = 640
    -- spoon.AClock.textSize = 256
    -- spoon.AClock.showDuration = 5, -- seconds
    spoon.AClock:toggleShow()
end

-- hyper:bind({}, 't', nil, showClock)
-- hs.hotkey.bind({"alt"}, "T", nil, showClock)
