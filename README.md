# tmpCopier

Mac malware often writes stuff to /private/tmp/, and then deletes it once it's done running. To ensure that you capture these files, this script will copy the entire contents of /private/tmp/ every 5 seconds. It's implemented as an AppleScript rather than a shell script, since some malware will actually kill the Terminal.

Just run the script in Script Editor, and once you're ready to stop collecting, click the Stop button.
