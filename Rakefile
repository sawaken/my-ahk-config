AHK_PATH = 'AutoHotkey.exe'
AHK2EXE_PATH = 'Ahk2exe.exe'
START_UP_FOLDER_PATH = 'C:\Users\Owner\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'

desc 'exeファイルを生成(エラーになる場合は管理者権限で実行してください)'
task :default do
  sh "#{AHK2EXE_PATH} /in main.ahk /out my-ahk.exe"
end

desc 'exeファイルを生成してスタートアップフォルダにコピー'
task :install => :default do
  cp 'my-ahk.exe', "#{START_UP_FOLDER_PATH}\\my-ahk.exe"
end

desc 'コンパイルせずにそのまま実行'
task :exec do
  sh "#{AHK_PATH} main.ahk"
end

