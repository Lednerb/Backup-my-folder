# Backup-my-folder

This little script will backup a given folder to a `.tar.gz` file and display the progress on the terminal.

## Usage
Simple run the following command to backup a given folder:

```bash
./backup.sh /path/to/folder
```

This will generate a file called `backup-YYYY-mm-dd.tar.gz` in the current folder.

## Installation
Just clone this repo or download the `backup.sh` script, add the execute permission (`chmod +x backup.sh`), check if you've installed `pv` (`sudo apt-get install pv` on Ubuntu/Debian) and you're good to go.

### optional system-wide availability
If you want to just run `backup /my/folder` copy the backup script to the standard folder:

```
sudo cp ./backup.sh /usr/local/bin/backup
```

## Acknowledgement
A big thanks goes to the following people:

- [Philip Fourie](http://stackoverflow.com/a/1401495)
- [Andrew McGregor](http://stackoverflow.com/a/2013589)
- and the guys at [ubuntuusers.de](https://ubuntuusers.de) for their great [Bash-Skripting-Guide für Anfänger](https://wiki.ubuntuusers.de/Shell/Bash-Skripting-Guide_f%C3%BCr_Anf%C3%A4nger/)