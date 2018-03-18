AHK_PATH = 'AutoHotkey.exe'
AHK2EXE_PATH = 'Ahk2exe.exe'
START_UP_FOLDER_PATH = ENV['APPDATA'] + '\Microsoft\Windows\Start Menu\Programs\Startup'

desc 'パスの設定値を確認する'
task :show_path do
  puts "AHK_PATH: #{AHK_PATH}"
  puts "AHK2EXE_PATH: #{AHK2EXE_PATH}"
  puts "START_UP_FOLDER_PATH: #{START_UP_FOLDER_PATH}"
end

desc 'exeファイルを生成(エラーになる場合は管理者権限で実行してください)'
task :default do
  sh "#{AHK2EXE_PATH} /in main.ahk /out my-key-config.exe"
end

desc 'exeファイルをスタートアップフォルダにコピー'
task :install_exe do
  cp 'my-ahk.exe', "#{START_UP_FOLDER_PATH}\\my-key-config.exe"
end

desc 'ahkファイルをそのままスタートアップフォルダにコピー'
task :install do
  cp 'main.ahk', "#{START_UP_FOLDER_PATH}\\my-key-config.ahk"
end

desc 'コンパイルせずにそのまま実行'
task :exec do
  sh "#{AHK_PATH} main.ahk"
end

