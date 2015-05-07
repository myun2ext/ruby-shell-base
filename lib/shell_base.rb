require 'shell_base/version'
require 'readline'

class ShellBase
  def self.prompt(s)
    @@default_prompt = s
  end

  def initialize
    @prompt = @@default_prompt
    while readline; end
  end

  def readline
    input = Readline.readline(@prompt, true).split(" ")
    input[0] != 'exit'
  end
end
