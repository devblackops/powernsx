##
## This is commented out until we're ready to enforce tests for every function
##

# Get-Module $env:BHProjectName | Remove-Module
# Import-Module $env:BHPSModulePath -Verbose:$false -ErrorAction Stop
# $moduleVersion = (Test-ModuleManifest $env:BHPSModuleManifest | select -ExpandProperty Version).ToString()
# $ms = [Microsoft.PowerShell.Commands.ModuleSpecification]@{ ModuleName = $env:BHProjectName; RequiredVersion = $moduleVersion }
# $commands = Get-Command -FullyQualifiedModule $ms -CommandType Cmdlet, Function, Workflow  # Not alias

# describe 'Function Unit Test Coverage' {
#     foreach ($command in $commands) {
#         $testFile = "$env:BHProjectPath\Tests\Unit\$($command.Name).tests.ps1"
#         it "$($command.Name) has Pester unit test file" {
#             Test-Path -Path $testFile | should be $true    
#         }
#     }
# }
