#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.

EnvGet, u, USERPROFILE
config = %u%\.config\logtime
FileCreateDir, %config%

Menu, TRAY, add
Menu, TRAY, add, Project Clipboard &Help, help

make_menu() {
    Menu, TRAY, NoStandard
    Menu, TRAY, add, &Maximize, gui_handler
    Menu, TRAY, add, &About Keylogger, about_handler
    Menu, TRAY, add, Logtime &Help, help_handler
    Menu, TRAY, add, E&xit, exit_handler
}

pop_up() {
    static

    Gui, Add, Text,, &Project Name
    Gui, Add, Edit, W250 vfile, %file% 

    Gui, Add, Button, default, &OK
    Gui, Add, Button,, &Cancel

    return

    GuiClose:
    Gui, Destroy
    return

    ButtonCancel:
    Gui, Destroy
    return

    ButtonOK:
    Gui, Submit, NoHide
    Gui, Destroy

    return
}

