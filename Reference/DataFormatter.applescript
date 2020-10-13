on readFile(fileToRead)
	-- Convert the file to a string
	set theFile to fileToRead as string
	
	-- Read the file and return its contents
	return read file theFile
end readFile

on readAndSplitFile(theFile, theDelimiter)
	-- Convert the file to a string
	set theFile to theFile as string
	
	-- Read the file using a specific delimiter and return the results
	return read file theFile using delimiter {theDelimiter}
end readAndSplitFile

on writeTextToFile(theText, theFile, overwriteExistingContent)
	try
		-- Convert the file to a string
		set theFile to theFile as string
		-- Open the file for writing
		set theOpenedFile to open for access file theFile with write permission
		-- Clear the file if content should be overwritten
		if overwriteExistingContent is true then set eof of theOpenedFile to 0
		-- Write the new content to the file
		write theText to theOpenedFile starting at eof
		-- Close the file
		close access theOpenedFile
		-- Return a boolean indicating that writing was successful
		return true
		-- Handle a write error
	on error
		-- Close the file
		try
			close access file theFile
		end try
		-- Return a boolean indicating that writing failed
		return false
	end try
end writeTextToFile

on convertListToString(theList, theDelimiter)
	set AppleScript's text item delimiters to theDelimiter
	set theString to theList as string
	set AppleScript's text item delimiters to ""
	return theString
end convertListToString

on getSource(this_URL)
	tell application "Safari"
		activate
		set the URL of the current tab of document 1 to this_URL
		set the |source| to the source of the front document
	end tell
	tell application "TextEdit"
		activate
		set the text of the front document to the source
	end tell
	quit application "Safari"
end getSource

on trimText(theText, theCharactersToTrim, theTrimDirection)
	set theTrimLength to length of theCharactersToTrim
	if theTrimDirection is in {"beginning", "both"} then
		repeat while theText begins with theCharactersToTrim
			try
				set theText to characters (theTrimLength + 1) thru -1 of theText as string
			on error
				-- text contains nothing but trim characters
				return ""
			end try
		end repeat
	end if
	if theTrimDirection is in {"end", "both"} then
		repeat while theText ends with theCharactersToTrim
			try
				set theText to characters 1 thru -(theTrimLength + 1) of theText as string
			on error
				-- text contains nothing but trim characters
				return ""
			end try
		end repeat
	end if
	return theText
end trimText

(* set listFile to choose file with prompt "Please select a text file to read:"
readFile(listFile)
set termsList to readAndSplitFile(listFile, "
")
--> Result: "Contents of the chosen file."
set urlList to {}

repeat with a from 1 to length of termsList
	set theCurrentListItem to item a of termsList
	-- Process the current list item
	set urlString to "https://www.dictionaryapi.com/api/v3/references/medical/json/" & theCurrentListItem & "?key=" & "b744492b-17f2-462b-a566-2c805e355b02"
	copy urlString to the end of the urlList
end repeat *)

(* set newFile to "Macintosh HD:Users:marioflores:Desktop:Test.txt"
set newUrlList to readAndSplitFile(newFile, "
")
set sourceList to {}
set definitionsList to {}

repeat with a from 3328 to length of newUrlList
	set theCurrentListItem to item a of newUrlList
	set theURL to theCurrentListItem
	set sourceString to ""
	tell application "Safari"
		open location theURL
		repeat while document 1's source = ""
			delay 0.5
		end repeat
		set sourceString to document 1's source
		copy sourceString to the end of the sourceList
		document 1 close
	end tell
	set searchString to "\"shortdef\":\\[(.[^\\]]*)\\]\\}"
	set filteredString to do shell script "awk 'match($0,/" & searchString & "/) {print substr($0,RSTART,RLENGTH)}'<<<" & quoted form of sourceString
	set newString to "- ## Definition: " & filteredString
	tell application "Finder"
		log "TEST"
		log a
		log newString
	end tell
	copy newString to the end of the definitionsList
end repeat *)

set listString to convertListToString(definitionsList, "
")
set newFile to "Macintosh HD:Users:marioflores:Desktop:Test2.txt"
writeTextToFile(listString, newFile, true)
(* 
set dataFile to choose file with prompt "Please select a text file to read:"
set dataList to readAndSplitFile(dataFile, ",")
set newDataList to {}

repeat with a from 1 to length of dataList
	set theCurrentDataListItem to item a of dataList
	set theCurrentDefinitionListItem to item a of definitionsList
	-- Process the current list item
	set newItem to theCurrentDataListItem & "- ## Definition: " & theCurrentDefinitionListItem
	copy newItem to the end of the newDataList
	tell application "Finder"
		log newItem
	end tell
end repeat

set listString to convertListToString(newDataList, "
")
set newFile to "Macintosh HD:Users:marioflores:Desktop:Test2.txt"
writeTextToFile(listString, newFile, true)
*)