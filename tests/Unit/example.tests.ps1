
describe 'foo' {
    context 'Returns an object' {
        $mockObject = . $env:BHProjectPath\Tests\Mocks\mymock.ps1

        it 'Mock object exists' {
            $mockObject | Should Not BeNullOrEmpty
        }

        it 'Mock object value is [bar]' {
            $mockObject.Value | Should Be 'bar'
        }
    }
}
