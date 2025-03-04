/// Imported C API directly from header files
pub const c = @cImport({
    @cInclude("gtk/gtk.h");
    if (@import("build_options").adwaita) {
        @cInclude("libadwaita-1/adwaita.h");
    }

    // Add in X11-specific GDK backend which we use for specific things
    // (e.g. X11 window class).
    @cInclude("gdk/x11/gdkx.h");
    // Xkb for X11 state handling
    @cInclude("X11/XKBlib.h");

    // generated header files
    @cInclude("ghostty_resources.h");

    // compatibility
    @cInclude("ghostty_gtk_compat.h");
});
