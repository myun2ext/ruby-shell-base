require 'shell_base'

describe ShellBase do
  before do
    class ExampleShell < ShellBase
      def test
        puts "Test is success!"
      end
    end
  end
  it { ExampleShell.new }
end
