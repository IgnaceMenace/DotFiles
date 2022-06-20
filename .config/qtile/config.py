from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = guess_terminal()

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "Up", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "shift"], "c", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "shift"], "e", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "d", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    # Switch workspace (I wrote this like a monkey)
    Key([mod], "ampersand", lazy.group["1"].toscreen(), desc="Switch to group {}".format("1")),
    Key([mod], "eacute", lazy.group["2"].toscreen(), desc="Switch to group {}".format("2")),
    Key([mod], "quotedbl", lazy.group["3"].toscreen(), desc="Switch to group {}".format("3")),
    Key([mod], "apostrophe", lazy.group["4"].toscreen(), desc="Switch to group {}".format("4")),
    Key([mod], "parenleft", lazy.group["5"].toscreen(), desc="Switch to group {}".format("5")),
    Key([mod], "section", lazy.group["6"].toscreen(), desc="Switch to group {}".format("6")),
    Key([mod], "egrave", lazy.group["7"].toscreen(), desc="Switch to group {}".format("7")),
    Key([mod], "exclam", lazy.group["8"].toscreen(), desc="Switch to group {}".format("8")),
    Key([mod], "ccedilla", lazy.group["9"].toscreen(), desc="Switch to group {}".format("9")),
    Key([mod], "agrave", lazy.group["10"].toscreen(), desc="Switch to group {}".format("10")),
    # Move window to a workspace (also wrote this like a monkey)
    Key([mod, "shift"], "ampersand", lazy.window.togroup("1", switch_group=True), desc="Switch to group {}".format("1")),
    Key([mod, "shift"], "eacute", lazy.window.togroup("2", switch_group=True), desc="Switch to group {}".format("2")),
    Key([mod, "shift"], "quotedbl", lazy.window.togroup("3", switch_group=True), desc="Switch to group {}".format("3")),
    Key([mod, "shift"], "apostrophe", lazy.window.togroup("4", switch_group=True), desc="Switch to group {}".format("4")),
    Key([mod, "shift"], "parenleft", lazy.window.togroup("5", switch_group=True), desc="Switch to group {}".format("5")),
    Key([mod, "shift"], "section", lazy.window.togroup("6", switch_group=True), desc="Switch to group {}".format("6")),
    Key([mod, "shift"], "egrave", lazy.window.togroup("7", switch_group=True), desc="Switch to group {}".format("7")),
    Key([mod, "shift"], "exclam", lazy.window.togroup("8", switch_group=True), desc="Switch to group {}".format("8")),
    Key([mod, "shift"], "ccedilla", lazy.window.togroup("9", switch_group=True), desc="Switch to group {}".format("9")),
    Key([mod, "shift"], "agrave", lazy.window.togroup("10", switch_group=True), desc="Switch to group {}".format("10")),
]

groups = [Group(i) for i in ["1","2","3","4","5","6","7","8","9","10"]]
"""
for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                http://i.name,
                http://lazy.group[http://i.name].toscreen(),
                desc="Switch to group {}".format(http://i.name),
            ),
            # mod1 + shift + letter of group = switch to &amp; move focused window to group
            Key(
                [mod, "shift"],
                http://i.name,
                lazy.window.togroup(http://i.name, switch_group=True),
                desc="Switch to &amp; move focused window to group {}".format(http://i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], http://i.name, lazy.window.togroup(http://i.name),
            #     desc="move focused window to group {}".format(https://t.co/IugTIc4A5C)),
        ]
    )
"""
layouts = [
    #layout.Columns(border_focus_stack=["#d75f5f", "#8f3d3d"], border_width=4),
    #layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
     layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.TextBox("default config", name="default"),
                widget.TextBox("Press &amp;lt;M-r&amp;gt; to spawn", foreground="#d75f5f"),
                # NB Systray is incompatible with Wayland, consider using StatusNotifier instead
                # widget.StatusNotifier(),
                widget.Systray(),
                widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
                widget.QuickExit(),
            ],
            24,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
