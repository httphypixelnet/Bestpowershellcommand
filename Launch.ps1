$wshell = New-Object -ComObject Wscript.Shell
$path =  "C:\Users\"+$env:UserName+"\MC-Launcher.jar"
$javaPath = "C:\Program Files\Java\jre1.8.0_311\bin"

if (Test-Path -Path "C:\Program Files (x86)\PaperCut MF Client\runtime\jre\bin\java.exe") {
    $javaPath = "C:\Program Files (x86)\PaperCut MF Client\runtime\jre\bin\java.exe"
}

if (Test-Path -Path $path) {
    $wshell.Popup("MC-Launcher.jar is already installed! Click ok to launch MC-Launcher.jar")
} else {
    Invoke-WebRequest -Uri "https://tlaun.ch/dl/mcl/jar" -OutFile $path
    $wshell.Popup("Successfully installed MC-Launcher.jar! Click ok to launch MC-Launcher.jar")
}

cd $javaPath
./java -jar $path
