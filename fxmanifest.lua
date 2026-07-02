fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'BCGAMING'
description 'bc-dailyrewards - Daily Login Rewards (ESX / QBCore / Standalone)'
version '1.0.0'

shared_script 'config.lua'

client_script 'client/client.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

-- Requires the oxmysql resource to be started before this one.
-- https://github.com/overextended/oxmysql
