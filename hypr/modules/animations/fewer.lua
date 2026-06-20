-- ███████╗███████╗██╗    ██╗███████╗██████╗
-- ██╔════╝██╔════╝██║    ██║██╔════╝██╔══██╗
-- █████╗  █████╗  ██║ █╗ ██║█████╗  ██████╔╝
-- ██╔══╝  ██╔══╝  ██║███╗██║██╔══╝  ██╔══██╗
-- ██║     ███████╗╚███╔███╔╝███████╗██║  ██║
-- ╚═╝     ╚══════╝ ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝

-- Fewer (Ultimate Productivity Animation Setup with Maximum Speed in Mind i.e. no animations)
hl.curve("fewer", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1 } } })

-- Animation Behaviours
hl.animation({ leaf = "windows", enabled = false, speed = 6, bezier = "fewer" })
hl.animation({ leaf = "windowsOut", enabled = false, speed = 6, bezier = "fewer" })
hl.animation({ leaf = "border", enabled = false, speed = 3, bezier = "fewer" })
hl.animation({ leaf = "borderangle", enabled = false, speed = 1, bezier = "fewer" })
hl.animation({ leaf = "fade", enabled = true, speed = 9, bezier = "fewer" })
hl.animation({ leaf = "workspaces", enabled = false, speed = 5, bezier = "fewer" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "fewer", style = "fadeIn" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4, bezier = "fewer", style = "fadeOut" })
