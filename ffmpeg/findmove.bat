@echo off
for /r %%a  in (*.mkv,*.mp4,*.mov,*.flv,*.wmv,*.asf,*.mpeg,*.mpg,*.wmv,*.rm,*.rmvb,*.ts,*.m2ts,*.ISO) do ffprobe -v quiet -print_format json -show_format -show_streams "%%a"  > "%%~na.json"
