local custom_gruvbox = require'lualine.themes.gruvbox'

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.c.bg = '#112233'
require('lualine').setup {
    options = { theme  = custom_gruvbox },
    sections = {
        lualine_c = {
            {'filename',
                path = 1,                -- 0: Just the filename
                                       -- 1: Relative path
                                       -- 2: Absolute path
                                       -- 3: Absolute path, with tilde as the home directory

                shorting_target = 80,    -- Shortens path to leave 40 spaces in the window
            }
                                       -- for other components. (terrible name, any suggestions?)
        }
    }
}
