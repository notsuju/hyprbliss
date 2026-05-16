-- ██████╗ ██╗     ██╗███████╗███████╗
-- ██╔══██╗██║     ██║██╔════╝██╔════╝
-- ██████╔╝██║     ██║███████╗███████╗
-- ██╔══██╗██║     ██║╚════██║╚════██║
-- ██████╔╝███████╗██║███████║███████║
-- ╚═════╝ ╚══════╝╚═╝╚══════╝╚══════╝

-- Bliss Animation (Perfect Balance Of Simple, Productive And Beautiful)
hl.curve("bliss", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

-- Animation Behaviours
hl.animation({ leaf = "windows",     enabled = true, speed = 7,  bezier = "bliss" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 7,  bezier = "bliss", style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "bliss" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8,  bezier = "bliss" })
hl.animation({ leaf = "fade",        enabled = true, speed = 7,  bezier = "bliss" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,  bezier = "bliss" })
hl.animation({ leaf = "layersIn",    enabled = true, speed = 2,  bezier = "bliss", style = "fadeIn" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 1,  bezier = "bliss", style = "fadeOut"})
