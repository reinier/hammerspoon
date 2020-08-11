-- Inspiration: https://github.com/evantravers/hammerspoon/blob/master/init.lua

config = {}
config.applications = {
  ['com.runningwithcrayons.Alfred'] = {
    bundleID = 'com.runningwithcrayons.Alfred',
    local_bindings = {'c', 'space', 'o'}
  },
  ['com.stairways.keyboardmaestro.engine'] = {
    bundleID = 'com.stairways.keyboardmaestro.engine',
    local_bindings = {'a', 's', 't', 'l'}
  },
  ['pl.maketheweb.cleanshotx'] = {
    bundleID = 'pl.maketheweb.cleanshotx',
    local_bindings = {'4'}
  },
  ['com.apple.finder'] = {
    bundleID = 'com.apple.finder',
    hyper_key = 'f'
  },
  ['com.agiletortoise.Drafts-OSX'] = {
    bundleID = 'com.agiletortoise.Drafts-OSX',
    hyper_key ='d'
  },
}

-- config.domains = {
--   ['twitter.com'] = {
--     url = 'twitter.com',
--     tags = {'distraction', 'socialmedia'}
--   },
--   ['instagram.com'] = {
--     url = 'instagram.com',
--     tags = {'distraction', 'socialmedia'}
--   },
--   ['reddit.com'] = {
--     url = 'reddit.com',
--     tags = {'distraction'}
--   },
--   ['youtube.com'] = {
--     url = 'youtube.com',
--     tags = {'distraction'}
--   }
-- }

hyper = require('hyper')
hyper.start(config)

movewindows = require('movewindows')
movewindows.start()

-- Extra direct window management

-- hyper:bind({}, '-', nil, function()
--   hs.window.focusedWindow():moveToUnit(hs.geometry.rect(0, 0, 0.8, 0.8))
--   hs.window.focusedWindow():centerOnScreen()
-- end)
--
-- hyper:bind({}, '=', nil, function()
--   hs.window.focusedWindow():moveToUnit(hs.layout.maximized)
-- end)
--
-- hyper:bind({}, ']', nil, function()
--   hs.window.focusedWindow():moveToUnit(hs.layout.right50)
-- end)
--
-- hyper:bind({}, '[', nil, function()
--   hs.window.focusedWindow():moveToUnit(hs.layout.left50)
-- end)
--
-- hyper:bind({'shift'}, ']', nil, function()
--   hs.window.focusedWindow():moveOneScreenEast()
-- end)
--
-- hyper:bind({'shift'}, '[', nil, function()
--   hs.window.focusedWindow():moveOneScreenWest()
-- end)

-- Random bindings
hyper:bind({}, 'r', nil, function()
  hs.application.launchOrFocusByBundleID('org.hammerspoon.Hammerspoon')
end)

hyper:bind({'shift'}, 'r', nil, function() hs.reload() end)

-- Laat het weeknummer zien
-- hyper:bind({}, 'w', nil, function()
--   local weekNumber = os.date("!%V")
--   local prompt = string.format("Het is week %s", weekNumber)
--   hs.alert.show(prompt, {textFont = "Menlo", strokeWidth = 0, strokeColor = { white = 1, alpha = 0 }, fillColor = { black = 1, alpha = 0.5 }})
-- end)

-- hyper:bind({}, 'p', nil, function()
--   currentWeek = ''
--   currentWeek = hs.execute('week=`date "+%V"`')
--   hs.alert.show(currentWeek)
-- end)


-- Jump to figma
-- hyper:bind({}, 'v', nil, function()
--   hs.application.launchOrFocusByBundleID('com.figma.Desktop')
-- end)

-- hyper:bind({}, 'a', nil, function()
--   hs.application.launchOrFocusByBundleID('com.figma.Desktop')
-- end)

-- SPOONS

require('clock')
