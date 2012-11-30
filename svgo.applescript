on adding folder items to this_folder after receiving these_items

    repeat with i from 1 to number of items in these_items

        set this_item to item i of these_items
        set the file_path to the quoted form of the POSIX path of this_item

        try
            do shell script "/bin/bash -l -c 'svgo " & file_path & "'"
        on error errStr number errorNumber
            display dialog "Error: " & errStr buttons {"OK"} with icon stop
            return number
        end try

    end repeat

end adding folder items to
