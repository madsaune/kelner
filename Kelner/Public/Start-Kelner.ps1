function Start-Kelner {
    [CmdletBinding()]
    param (
        # Parameter help description
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [Alias("Path")]
        [string]
        $RootPath,

        # Parameter help description
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $Port = "8080"
    )

    begin {
        $RootPath = Resolve-Path -Path $RootPath
    }

    process {
        Write-Output $RootPath
    }

    end {

    }
}
