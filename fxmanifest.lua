fx_version 'cerulean'
game 'gta5'

description 'QB-Core Biker Gang Job with ox_inventory Integration'

shared_scripts {
    '@qb-core/import.lua',
    '@ox_inventory/imports.lua'
}

server_scripts {
    'server/bikergang.lua'
}

client_scripts {
    'client/bikergang.lua'
}

dependencies {
    'qb-core',
    'ox_inventory'
}
