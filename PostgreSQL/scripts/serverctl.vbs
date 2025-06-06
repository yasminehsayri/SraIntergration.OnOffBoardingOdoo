' Copyright (c) 2012-2020, EnterpriseDB Corporation.  All rights reserved
On Error Resume Next

' PostgreSQL server control script for Windows

' Check the command line
If WScript.Arguments.Count = 0 OR WScript.Arguments.Count > 2 Then
    usage
End If
Dim objShell, objFso, objTempFolder, objWMI
' Get temporary filenames
Set objShell = WScript.CreateObject("WScript.Shell")

strWinDir = objShell.ExpandEnvironmentStrings("%WINDIR%")

bWait = False
If WScript.Arguments.Count = 2 Then
    If WScript.Arguments.Item(1) = "wait" Then
        bWait = True
    Else
        usage
    End If
End If

strAction = WScript.Arguments.Item(0)
iRet = 0

Select Case strAction
    Case "start"
         iRet = DoCmd("""" & strWinDir & """\System32\net start PostgreSQL_For_Odoo")
    Case "stop"
         iRet = DoCmd("""" & strWinDir & """\System32\net stop PostgreSQL_For_Odoo")
    Case "reload"
         iRet = DoCmd("""C:\Program Files\Odoo 16.0.20250212\PostgreSQL\bin\pg_ctl.exe"" -D ""C:\Program Files\Odoo 16.0.20250212\PostgreSQL\data"" reload")
    Case "restart"
	     iRet = DoCmd("""" & strWinDir & """\System32\net stop PostgreSQL_For_Odoo")
		 If iRet = 0 Then
		     iRet = DoCmd("""" & strWinDir & """\System32\net start PostgreSQL_For_Odoo")
		 End If
    Case Else
        usage
End Select

If bWait = True Then
    If Err.Number <> 0 Then
        WScript.Echo "An error occured executing the " & strAction & " command (" & Err.Number & ")"
    End If
    If iRet <> 0 Then
        WScript.Echo "The " & strAction & " command returned an error (" & iRet & ")"
    End If
    WScript.StdOut.Write vbCrLf & "Press <return> to continue..."
    WScript.StdIn.ReadLine
End If

WScript.Quit iRet

' Execute a command
Function DoCmd(cmd)
    Dim objShell, objOutput
    Set objShell = WScript.CreateObject("WScript.Shell")
    Set objOutput = objShell.Exec(cmd)
    Do While Not objOutput.StdOut.AtEndOfStream
        If Not objOutput.StdOut.AtEndOfStream Then
           strOutput = strOutput & vbCrLf & objOutput.StdOut.ReadLine
        End If
    Loop
    Do While Not objOutput.StdErr.AtEndOfStream
        If Not objOutput.StdErr.AtEndOfStream Then
           strOutput = strOutput & vbCrLf & objOutput.StdErr.ReadLine
        End If
    Loop
    WScript.Echo strOutput
    DoCmd = objOutput.ExitCode

    Set objOutput = Nothing
    Set objShell = Nothing
End Function

' Usage message
Sub usage()
    Wscript.Echo "Usage: serverctl.vbs start|stop|reload|restart [wait]"
    iRet = 127
    WScript.Quit iRet
End Sub


