
; NREADY.NET
; leqnam@live.com | nam@nready.net
; Auto backup all modified files and folders on changed on Windows OS

#include <AutoItConstants.au3>

$file = @StartupDir & "\xcopy.bat"
$source = FileSelectFolder("Select a source", "", 1)
$destination = FileSelectFolder("Select a destination", "", 1)
FileDelete($file)

TrayTip("Batch DOSBox", @StartupDir, 0x001E, 1)
If @error Then Exit

FileWrite($file, "cls" & @CRLF & 'xcopy "' & $source & '" "' & $destination & '" /E /H /C /D /Y')
Sleep(0x0064)

Global $Timer = TimerInit(), $Diff = 0
While 1
    $Diff = TimerDiff($Timer)
    If $Diff >= 5000 Then
        ShellExecute($file, "", @StartupDir, "open", @SW_HIDE)
        $Timer = TimerInit()
    EndIf
    Sleep(10)
 WEnd
