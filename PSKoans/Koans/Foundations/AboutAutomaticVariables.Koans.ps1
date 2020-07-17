using module PSKoans
[Koan(Position = 122)]
param()
<#
    Automatic Variables

    Powershell provides a number of automatic Variables which can be used in a
    number of different ways.
    Automatic Variables are variables which will be created and mantained by
    PowerShell itself.

    In the Foundation chapter you already used some of those automatic Variables.

    You can use the following command to get a full overview of Automatic Variables:

        Get-Help about_Automatic_Variables

    or visit the Microsoft docs here:
        https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables


#>
Describe 'Automatic Variables'  {

    It 'provides nothing, truth and falsehood' {
        <#
            These are some variables you've used before.
        #>

        $____ | Should -BeNullOrEmpty
        $____ | Should -BeTrue
        $____ | Should -BeFalse
    }

    It 'contains parts of your commands' {
        <#
            PowerShell provides automatic variables which will give you insights into
            the command you've run last.
        #>

        Get-Variable -Name "true"
        $^ | Should -Be '___'
        $____ | Should -Be 'true'
    }

    It 'provides loop variables' {
        <#
            As seen in AboutLoopsAndPipelines Powershell creates a variable which
            will contain the current item in the pipline
        #>

        1 | ForEach-Object {
            $____ | Should -Be 1
        }
    }

    It 'contains information about your environment' {
        <#
            PowerShell provides a number of variables which contain detailed
            information about your PowerShell environment
        #>

        # You can find your Home
        $HOME | Should -Be '____'
    }
}
