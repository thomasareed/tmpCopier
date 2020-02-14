-- copy every 5 seconds
set copyInterval to 5

set copyDestination to "~/Desktop/tmpCopy/"

do shell script "if [ ! -e " & copyDestination & " ]; then mkdir " & copyDestination & "; fi"

-- loop endlessly until killed by user
repeat
	
	set currentTimestamp to do shell script "date +\"%s\""
	do shell script "ditto /private/tmp " & copyDestination & currentTimestamp with administrator privileges
	do shell script "sleep " & copyInterval
	
end repeat
