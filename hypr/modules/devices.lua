-- Trackpad Acceleration Profiles
hl.device({ name = "elan1200:00-04f3:3168-touchpad", accel_profile = "adaptive" })
hl.device({ name = "elan9009:00-04f3:2c1b-touchpad", accel_profile = "adaptive" })

-- Mouse Ghost click fix (Disabling nearlink devices)
hl.device({ name = "compx-atk-x1-se-nearlink-keyboard", enabled = false })
hl.device({ name = "compx-atk-x1-se-nearlink-system-control", enabled = false })
hl.device({ name = "compx-atk-x1-se-nearlink-consumer-control", enabled = false })
hl.device({ name = "compx-atk-x1-se-nearlink", enabled = false })

-- Touchscreen Mapping
hl.device({ name = "elan9009:00-04f3:2c1b", output = "DP-1" })
hl.device({ name = "elan9008:00-04f3:2c1a", output = "eDP-1" })

-- Stylus Mapping
hl.device({ name = "elan9008:00-04f3:2c1a-stylus", output = "eDP-1" })
hl.device({ name = "elan9009:00-04f3:2c1b-stylus", output = "DP-1" })
