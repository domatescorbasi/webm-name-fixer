# webm-name-fixer

# DESCRIPTION

**webm-name-fixer** is a small shell script to rename timestamped webms, with their original name. It checks the tags of the video, if exists renames the file to the tag. It is compatible with Unix-like systems.


# Usage

$: ./webm-name-fixer.sh /path/to/dir

# Example

### Before

![alt text](https://s1.postimg.org/1afx0typq7/before.png "Before")

### Command

![alt text](https://s1.postimg.org/1dziyjsflb/command.png "Command")

### After

![alt text](https://s1.postimg.org/3r25fr6127/after.png "After")

# Warning

Do not run this script as **root**.

# Dependency

mediainfo
