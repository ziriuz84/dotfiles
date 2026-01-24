-- lua/plugins/spotify.lua
return {
  {
    'Caronte995/spotify-player.nvim',
    opts = {
      -- You can add your custom options here if you want
    },
    -- optional lazy-loading:
    cmd = { 'SpotifyToggle', 'Spotify' },
  },
}
