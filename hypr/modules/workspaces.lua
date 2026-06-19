-- ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗███████╗██████╗  █████╗  ██████╗███████╗███████╗
-- ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝
-- ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ███████╗██████╔╝███████║██║     █████╗  ███████╗
-- ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  ╚════██║
-- ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗███████║██║     ██║  ██║╚██████╗███████╗███████║
--  ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝╚══════╝

-- Main Laptop Screen (eDP-1)
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1" })

-- Screenpad (DP-1)
hl.workspace_rule({ workspace = "6", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "7", monitor = "DP-1" })
hl.workspace_rule({ workspace = "8", monitor = "DP-1" })

-- External Monitor (DP-3/HDMI-A-3)
-- hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-3", default = true })
hl.workspace_rule({ workspace = "9", monitor = "DP-3", default = true })
-- hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-3" })
hl.workspace_rule({ workspace = "10", monitor = "DP-3" })
