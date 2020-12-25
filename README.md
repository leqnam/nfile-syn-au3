# nfile-syn-au3
Auto backup all files and folders on changed with AutoIt and xcopy

This scipt is about help to auto backup all files and folders in a source to a destination folder using AutoIt and xcopy.

## xcopy

xcopy command is easy to use: `xcopy [source] [destination] [options]`

Some options:

- /E – Copy subdirectories, including any empty ones.
- /H - Copy files with hidden and system file attributes
- /C - Continue copying even if an error occurs.
- /I - If in doubt, always assume the destination is a folder. e.g. when the destination does not exist.
- /D:mm-dd-yyyy - Copy files changed on or after the specified date. If no date is given, copy only files whose source date/time is newer than the destination time.
- /Y - Suppress prompt to confirm overwriting a file. can be preset in the COPYCMD env variable.
- /-Y - Prompt to confirm overwriting a file.

## AutoIt

Just create a FileSelectFolder dialog to browse to a source folder and destination folder and then, combine with the `xcopy`. 


```git clone https://github.com/leqnam/nfile-syn-au3```


You can folk the script to the local and use, it may implement more feature as suggest:

- Set the time for schedule
- Multiple backup
- Manage the schedule job in a main dashboard


## Acknowledgements

The script is used for demo purpose and must be implement more feature when I have more time. Feel free to folk and contrubute if you have more ideas. It would be appreciated.

The blog has been posted at:
- in Vietnamese: https://nready.net/tu-dong-sao-luu-khi-tep-va-thu-muc-co-su-thay-doi-voi-autoit-va-xcopy


## Credits

Contact me for futher informations:
- Le Quoc Nam
- leqnam@live.com / nam@nready.net
- https://nready.net