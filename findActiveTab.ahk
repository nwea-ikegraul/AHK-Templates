::#reportmissing::
  SetTitleMatchMode, 1
  id := WinExist("A")
  tabFound :=
  WinGetActiveTitle, StartingTitle
  send {Control down}{PgDn}{Control Up}
  loop{
        send {Control down}{PgUp}{Control Up}
        Sleep 50
         If WinExist(%id%) {
            MsgBox Tab was found
            break
            }
         WinGetActiveTitle, CurrentTabTitle
         If (CurrentTabTitle == StartingTitle)
            break
}
