require 'shell_base'

describe ShellBase do
  before do
    class ExampleShell < ShellBase
      prompt "$ "
    end
  end
  it { ExampleShell.new }
end
