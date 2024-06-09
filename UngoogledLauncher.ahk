#Requires Autohotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.0.2
;@Ahk2Exe-Set ProductVersion, 1.0.2.0
;@Ahk2Exe-Set CompanyName, Pikakid98

#Include fti.scriptlet

Value := IniRead("user.ini", "Args", "Args")

if A_Args.Length < 1
{
    Run UGCPath " " "--user-data-dir=" A_ScriptDir "\UserData --extension-mime-request-handling=always-prompt-for-install" " " Value
    ExitApp
}

if A_Args.Length > 1
{
    for n, param in A_Args
    {
        Run UGCPath " " "--user-data-dir=" A_ScriptDir "\UserData --extension-mime-request-handling=always-prompt-for-install" " " Value " " "--single-argument" " " A_Args[2]
        ExitApp
    }
}