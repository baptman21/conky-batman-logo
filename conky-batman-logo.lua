-------------------------------------------------------------------------------
--                            conky-batman-logo.lua
--
--  author  : Baptman
--  version : v1
--
--------------------------------------------------------------------------------

require 'cairo'

-------------------------------------------------------------------------------
--
-- colors data
--
settings = {
    -- Position and size of the logo in the conky window
    origin_x = 325,
    origin_y = 280,
    size = 1.5,
}
-------------------------------------------------------------------------------
--
-- colors data
--
colors_data = {
    -- Colors of the shapes
    bg_color_1 = 0xFFFFFF,
    bg_alpha_1 = 1,
    bg_color_2 = 0x4b4b4b,
    bg_alpha_2 = 0.5,
    bg_color_3 = 0x0666BA,
    bg_alpha_3 = 1,
    -- Color of the text
    fg_color_1 = 0x0666BA,
    fg_alpha_1 = 1,
    fg_color_2 = 0xFFFFFF,
    fg_alpha_2 = 0.6,
    fg_color_3 = 0xFFFFFF,
    fg_alpha_3 = 0.4,
    fg_color_4 = 0xFFFFFF,
    fg_alpha_4 = 0.2,
}

-------------------------------------------------------------------------------
--
-- fonts data
--
fonts_data = {
    font_1 = "lato",
    font_2 = "noto sans bold",
}

-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(color, alpha)
    return ((color / 0x10000) % 0x100) / 255., ((color / 0x100) % 0x100) / 255., (color % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--
-- drawing data
--
--
time_info_data = {
    arcs = {
    },
    lines = {
        {
            startx = 115.7,
            starty = 90,
            endx = 106,
            endy = 102,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = 106,
            starty = 102,
            endx = 65,
            endy = 102,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    texts = {
    },
    bars = {
    },
    vars = {
        {
            x = 65,
            y = 106,
            value = "${time %H:%M}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 17,
            txt_fg_color = colors_data['fg_color_1'],
            txt_fg_alpha = colors_data['fg_alpha_1'],
            font = "noto sans display",
            font_slant = CAIRO_FONT_SLANT_BOLD,
        }
    }
}
date_info_data = {
    arcs = {
    },
    lines = {
        {
            startx = -115.7,
            starty = 90,
            endx = -106,
            endy = 102,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = -106,
            starty = 102,
            endx = -45,
            endy = 102,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    texts = {
    },
    bars = {
    },
    vars = {
        {
            x = -104,
            y = 88,
            value = "${time %A}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 14,
            txt_fg_color = colors_data['fg_color_1'],
            txt_fg_alpha = colors_data['fg_alpha_1'],
            font = "noto sans display",
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = -106,
            y = 106,
            value = "${time %d/%m/%Y}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_1'],
            txt_fg_alpha = colors_data['fg_alpha_1'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
    }
}
disk_info_data = {
    arcs = {
    },
    lines = {
        {
            startx = -106.6,
            starty = 65.5,
            endx = -130,
            endy = 29,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = -130,
            starty = 29,
            endx = -50,
            endy = 29,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    texts = {
        {
            x = -117,
            y = 32,
            txt = "DISK",
            txt_weight = 1,
            txt_size = 19,
            txt_fg_color = colors_data['fg_color_1'],
            txt_fg_alpha = colors_data['fg_alpha_1'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        }
    },
    bars = {
    },
    vars = {
        {
            x = -125,
            y = 20,
            value = "${fs_used /}",
            txt_format = "/ %s | ",
            txt_weight = 1,
            txt_size = 7,
            txt_fg_color = colors_data['fg_color_2'],
            txt_fg_alpha = colors_data['fg_alpha_2'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = -80,
            y = 20,
            value = "${fs_size /}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 7,
            txt_fg_color = colors_data['fg_color_2'],
            txt_fg_alpha = colors_data['fg_alpha_2'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
    }
}

ram_info_data = {
    arcs = {
    },
    lines = {
        {
            startx = 60,
            starty = 60,
            endx = 85,
            endy = 32,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = 85,
            starty = 32,
            endx = 200,
            endy = 32,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    texts = {
        {
            x = 90,
            y = 35,
            txt = "RAM",
            txt_weight = 1,
            txt_size = 19,
            txt_fg_color = colors_data['fg_color_1'],
            txt_fg_alpha = colors_data['fg_alpha_1'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        }
    },
    bars = {
        {
            value = "${memperc}",
            max_value = 100,
            -- bg bar
            bg_bar =
            {
                startx = 90,
                starty = 26,
                endx = 200,
                endy = 26,
                thickness = 9,
                line_cap = CAIRO_LINE_CAP_BUTT,
                bg_color = colors_data['bg_color_2'],
                bg_alpha = colors_data['bg_alpha_2'],
            },

            grad_fg_color = colors_data['bg_color_3'],
            grad_fg_alpha = colors_data['bg_alpha_3'],
            grad_format = "%s%%",
            grad_type = "fill",
            grad_delta_x = -19,
            grad_delta_y = -3,
            grad_width = 4,
            grad_disable_txt = true,
            grad_txt_weight = 1,
            grad_txt_size = 8,
            grad_font = fonts_data['font_1'],
            grad_font_slant = CAIRO_FONT_SLANT_BOLD,
            grad_txt_relative = false,
        }
    },
    vars = {
        {
            x = 90,
            y = 9,
            value = "${top_mem name 1}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_2'],
            txt_fg_alpha = colors_data['fg_alpha_2'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = 90,
            y = -1,
            value = "${top_mem name 2}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_3'],
            txt_fg_alpha = colors_data['fg_alpha_3'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = 90,
            y = -11,
            value = "${top_mem name 3}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_4'],
            txt_fg_alpha = colors_data['fg_alpha_4'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = 140,
            y = 35,
            value = "${mem}",
            txt_format = "%s | ",
            txt_weight = 1,
            txt_size = 6,
            txt_fg_color = colors_data['fg_color_2'],
            txt_fg_alpha = colors_data['fg_alpha_2'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = 170,
            y = 35,
            value = "${memmax}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 6,
            txt_fg_color = colors_data['fg_color_2'],
            txt_fg_alpha = colors_data['fg_alpha_2'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
    }
}

cpu_info_data = {
    arcs = {
    },
    lines = {
        {
            startx = -20.65,
            starty = 39.55,
            endx = -60,
            endy = -20,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = -60,
            starty = -20,
            endx = 80,
            endy = -20,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    texts = {
        {
            x = -40,
            y = -17,
            txt = "CPU",
            txt_weight = 1,
            txt_size = 19,
            txt_fg_color = colors_data['fg_color_1'],
            txt_fg_alpha = colors_data['fg_alpha_1'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        }
    },
    bars = {
        {
            value = "${cpu}",
            max_value = 100,
            -- bg bar
            bg_bar =
            {
                startx = -40,
                starty = -25.5,
                endx = 80,
                endy = -25.5,
                thickness = 9,
                line_cap = CAIRO_LINE_CAP_BUTT,
                bg_color = colors_data['bg_color_2'],
                bg_alpha = colors_data['bg_alpha_2'],
            },

            grad_fg_color = colors_data['bg_color_3'],
            grad_fg_alpha = colors_data['bg_alpha_3'],
            grad_format = "%s%%",
            grad_type = "fill",
            grad_delta_x = -18,
            grad_delta_y = -3,
            grad_width = 4,
            grad_disable_txt = false,
            grad_txt_weight = 1,
            grad_txt_size = 8,
            grad_font = fonts_data['font_1'],
            grad_font_slant = CAIRO_FONT_SLANT_BOLD,
            grad_txt_relative = false,
        }
    },
    vars = {
        {
            x = -40,
            y = -41,
            value = "${top name 1}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_2'],
            txt_fg_alpha = colors_data['fg_alpha_2'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = -40,
            y = -51,
            value = "${top name 2}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_3'],
            txt_fg_alpha = colors_data['fg_alpha_3'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        },
        {
            x = -40,
            y = -61,
            value = "${top name 3}",
            txt_format = "%s",
            txt_weight = 1,
            txt_size = 10,
            txt_fg_color = colors_data['fg_color_4'],
            txt_fg_alpha = colors_data['fg_alpha_4'],
            font = fonts_data['font_1'],
            font_slant = CAIRO_FONT_SLANT_BOLD,
        }
    }
}

bg_logo_data = {
    arcs = {
        {
            x = 0,
            y = 60,
            radius = 50.35,
            thickness = 2,
            ag_start = -0.5380 * math.pi,
            ag_end = -0.4620 * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            x = -16,
            y = 139.1,
            radius = 36.62,
            thickness = 2,
            ag_start = 0.4499 * math.pi,
            ag_end = 0.8789 * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            x = -195,
            y = 46.6,
            radius = 90.34,
            thickness = 2,
            ag_start = -0.3381 * math.pi,
            ag_end = -0.067 * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            x = -98.8,
            y = -63.8,
            radius = 129.6,
            thickness = 2,
            ag_start = -0.5191 * math.pi,
            ag_end = -0.2239 * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            x = 16,
            y = 139.1,
            radius = 36.62,
            thickness = 2,
            ag_start = (1 - 0.8789) * math.pi,
            ag_end = (1 - 0.4499) * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            x = 195,
            y = 46.6,
            radius = 90.34,
            thickness = 2,
            ag_start = (1 + 0.067) * math.pi,
            ag_end = (1 + 0.3381) * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            x = 98.8,
            y = -63.8,
            radius = 129.6,
            thickness = 2,
            ag_start = (1 + 0.2239) * math.pi,
            ag_end = (1 + 0.5191) * math.pi,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    lines = {
        {
            startx = -6,
            starty = 110,
            endx = -8,
            endy = 122,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = -8,
            starty = 122,
            endx = -11.4,
            endy = 102.8,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = -50,
            starty = 125.5,
            endx = -151,
            endy = 125.5,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = 6,
            starty = 110,
            endx = 8,
            endy = 122,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = 8,
            starty = 122,
            endx = 11.4,
            endy = 102.8,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        },
        {
            startx = 50,
            starty = 125.5,
            endx = 151,
            endy = 125.5,
            thickness = 2,
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = colors_data['bg_color_1'],
            bg_alpha = colors_data['bg_alpha_1'],
        }
    },
    texts = {
    },
    bars = {
    },
    vars = {
    }
}

drawing_data = {
    cpu_info_data,
    bg_logo_data,
    ram_info_data,
    disk_info_data,
    date_info_data,
    time_info_data,
}

-------------------------------------------------------------------------------
--                                                                   b_draw_var
-- draw var
--
function b_draw_var(display, org_x, org_y, size, data)
    -- TEXT
    local x, y = data['x'] * size, data['y'] * size
    local txt_weight, txt_size = data['txt_weight'], data['txt_size'] * size
    local txt_fg_color = data['txt_fg_color']
    local txt_fg_alpha = data['txt_fg_alpha']
    local txt_font = data['font']
    local txt_format = data['txt_format']
    local value = data['value']
    local txt_font_slant = data['font_slant']

    local txt = string.format(txt_format, tostring(conky_parse(value)))

    cairo_select_font_face (display, txt_font, txt_font_slant, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_color, txt_fg_alpha))
    cairo_move_to (display, x + org_x, org_y - y)
    cairo_show_text (display, txt)
    cairo_stroke (display)
end

-------------------------------------------------------------------------------
--                                                              b_draw_grad_bar
-- draw grad bar
--
function b_draw_grad_bar(display, org_x, org_y, size, data)
    local value_txt = conky_parse(data['value'])
    local value = tonumber(value_txt)
    local bar_width = data['bg_bar']['endx'] - data['bg_bar']['startx']

    b_draw_line(display, org_x, org_y, size, data['bg_bar'])

    local grad_bar = {}

    if data['grad_type'] == "grad" then
        local grad_x = value / data['max_value'] * (bar_width - data['grad_width'])
        grad_bar = {
            startx = data['bg_bar']['startx'] + grad_x,
            starty = data['bg_bar']['starty'],
            endx = data['bg_bar']['startx'] + grad_x + data['grad_width'],
            endy = data['bg_bar']['endy'],
            thickness = data['bg_bar']['thickness'],
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = data['grad_fg_color'],
            bg_alpha = data['grad_fg_alpha'],
        }
    elseif data['grad_type'] == "fill" then
        local grad_x = value / data['max_value'] * bar_width
        grad_bar = {
            startx = data['bg_bar']['startx'],
            starty = data['bg_bar']['starty'],
            endx = data['bg_bar']['startx'] + grad_x,
            endy = data['bg_bar']['endy'],
            thickness = data['bg_bar']['thickness'],
            line_cap = CAIRO_LINE_CAP_BUTT,
            bg_color = data['grad_fg_color'],
            bg_alpha = data['grad_fg_alpha'],
        }
    end

    b_draw_line(display, org_x, org_y, size, grad_bar)

    local grad_txt_x = data['bg_bar']['startx'] + data['grad_delta_x']
    local grad_txt_y = data['bg_bar']['starty'] + data['grad_delta_y']
    if data['grad_txt_relative'] then
        grad_txt_x = grad_bar['startx'] + data['grad_delta_x']
        grad_txt_y = grad_bar['starty'] + data['grad_delta_y']
    end

    if not data['grad_disable_txt'] then

        grad_txt = {
            x = grad_txt_x,
            y = grad_txt_y,
            txt = string.format(data['grad_format'], value_txt),
            txt_weight = data['grad_txt_weight'],
            txt_size = data['grad_txt_size'],
            txt_fg_color = data['grad_fg_color'],
            txt_fg_alpha = data['grad_fg_alpha'],
            font = data['grad_font'],
            font_slant = data['grad_font_slant'],
        }

        b_draw_text(display, org_x, org_y, size, grad_txt)
    end
end

-------------------------------------------------------------------------------
--                                                                  b_draw_text
-- draw text
--
function b_draw_text(display, org_x, org_y, size, data)
    -- TEXT
    local x, y = data['x'] * size, data['y'] * size
    local txt_weight, txt_size = data['txt_weight'], data['txt_size'] * size
    local txt_fg_color = data['txt_fg_color']
    local txt_fg_alpha = data['txt_fg_alpha']
    local txt_font = data['font']
    local txt = data['txt']
    local txt_font_slant = data['font_slant']
    cairo_select_font_face (display, txt_font, txt_font_slant, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_color, txt_fg_alpha))
    cairo_move_to (display, x + org_x, org_y - y)
    cairo_show_text (display, txt)
    cairo_stroke (display)
end

-------------------------------------------------------------------------------
--                                                                   b_draw_arc
-- draw arc
--
function b_draw_arc(display, org_x, org_y, size, data)
    local x, y = org_x + data['x'] * size, org_y - data['y'] * size
    local radius = data['radius'] * size
    local thickness = data['thickness'] * size
    local ag_start, ag_end = data['ag_start'], data['ag_end']
    local bg_color, bg_alpha = data['bg_color'], data['bg_alpha']

    cairo_arc(display, x, y, radius, ag_start, ag_end)
    cairo_set_source_rgba(display, rgb_to_r_g_b(bg_color, bg_alpha))
    cairo_set_line_width(display, thickness)
    cairo_stroke(display)
end

-------------------------------------------------------------------------------
--                                                                  b_draw_line
-- draw line
--
function b_draw_line(display, org_x, org_y, size, data)
    local startx = org_x +  data['startx'] * size
    local starty = org_y - data['starty'] * size
    local endx = org_x + data['endx'] * size
    local endy = org_y - data['endy'] * size
    local thickness = data['thickness'] * size
    local line_cap = CAIRO_LINE_CAP_BUTT
    local bg_color, bg_alpha = data['bg_color'], data['bg_alpha']

    cairo_set_line_width (display, thickness)
    cairo_set_line_cap  (display, line_cap)
    cairo_set_source_rgba(display, rgb_to_r_g_b(bg_color, bg_alpha))
    cairo_move_to (display, startx, starty)
    cairo_line_to (display, endx, endy)
    cairo_stroke (display)
end

-------------------------------------------------------------------------------
--                                                                  b_draw_data
-- draw data
--
function b_draw_data(display, org_x, org_y, size, data)
    for i in pairs(data['arcs']) do
        b_draw_arc(display, org_x, org_y, size, data['arcs'][i])
    end

    for i in pairs(data['lines']) do
        b_draw_line(display, org_x, org_y, size, data['lines'][i])
    end

    for i in pairs(data['bars']) do
        b_draw_grad_bar(display, org_x, org_y, size, data['bars'][i])
    end

    for i in pairs(data['vars']) do
        b_draw_var(display, org_x, org_y, size, data['vars'][i])
    end

    for i in pairs(data['texts']) do
        b_draw_text(display, org_x, org_y, size, data['texts'][i])
    end
end

-------------------------------------------------------------------------------
--                                                                         MAIN
function conky_main()
    if conky_window == nil then 
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)

    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)

    local org_x = settings['origin_x']
    local org_y = settings['origin_y']
    local size = settings['size']

    if update_num > 5 then
        for i in pairs(drawing_data) do
            b_draw_data(display, org_x, org_y, size, drawing_data[i])
        end
    end

    cairo_surface_destroy(cs)
    cairo_destroy(display)
end
