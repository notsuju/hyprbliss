hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        
        touchpad = {
            natural_scroll = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
            scroll_factor = 0.3
        },
        
        accel_profile = "flat",
        sensitivity = 0
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
