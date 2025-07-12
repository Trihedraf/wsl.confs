# Function to create hardlinks with -Force option if file exists
function createHardLink {
    param (
        $link,
        $file
    )
    If(!(Test-Path -PathType Leaf "$link"))
    {
        New-Item -ItemType HardLink -Path "$link" -Target "$file"
    }
    else {
        $response = Read-Host -Prompt "$link Exists. Do you want to overwrite?"
        if ($yes -contains $response) {
            New-Item -ItemType HardLink -Path "$link" -Target "$file" -Force
        }
    }
}

# Call createHardLink function to create hardlinks to config files
createHardLink -link "$env:USERPROFILE\.wslconfig" -file ".\.wslconfig"
