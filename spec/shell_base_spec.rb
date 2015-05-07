require 'shell_base'

describe ShellBase do
  before do
    class ExampleShell < ShellBase
      prompt "$ "
      def test
        puts "Test is success!"
      end
    end
  end
  it { ExampleShell.new }
end
