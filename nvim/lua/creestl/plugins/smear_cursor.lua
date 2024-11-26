return {
    "sphamba/smear-cursor.nvim",
    opts = {

        -- How fast the smear's head moves towards the target.
        -- 0: no movement, 1: instantaneous
        stiffness = 1,

        -- How fast the smear's tail moves towards the head.
        -- 0: no movement, 1: instantaneous
        trailing_stiffness = 0.3,

        -- How much the tail slows down when getting close to the head.
        -- 0: no slowdown, more: more slowdown
        trailing_exponent = 0.1,

        -- Cursor color. Defaults to Cursor gui color
        cursor_color = "#d3cdc3",

        -- Background color. Defaults to Normal gui background color
        normal_bg = "#282828",

        -- Smear cursor when switching buffers
        smear_between_buffers = true,

        -- Smear cursor when moving within line or to neighbor lines
        smear_between_neighbor_lines = true,

        -- Use floating windows to display smears over wrapped lines or outside buffers.
        -- May have performance issues with other plugins.
        use_floating_windows = true,

        -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
        -- Smears will blend better on all backgrounds.
        legacy_computing_symbols_support = false,
    },
}
