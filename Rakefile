AHK_PATH = 'AutoHotkey.exe'
AHK2EXE_PATH = 'Ahk2exe.exe'
EXE_FILE_NAME = 'my-key-config.exe'
START_UP_FOLDER_PATH = ENV['APPDATA'] + '\Microsoft\Windows\Start Menu\Programs\Startup'

desc 'パスの設定値を確認する'
task :path do
  puts "AHK_PATH: #{AHK_PATH}"
  puts "AHK2EXE_PATH: #{AHK2EXE_PATH}"
  puts "START_UP_FOLDER_PATH: #{START_UP_FOLDER_PATH}"
  puts "EXE_FILE_NAME: #{EXE_FILE_NAME}"
end

desc 'exeファイルを生成(生成先のexeが実行中だとpermissionエラーになるので注意)'
task :default do
  sh "#{AHK2EXE_PATH} /in main.ahk /out #{EXE_FILE_NAME}"
end

desc 'exeファイルをスタートアップフォルダにコピー(コピー先のexeが実行中だとpermissionエラーになるので注意)'
task :install do
  cp EXE_FILE_NAME, "#{START_UP_FOLDER_PATH}\\#{EXE_FILE_NAME}"
end

desc 'exeファイルを削除'
task :clean do
  rm EXE_FILE_NAME
end