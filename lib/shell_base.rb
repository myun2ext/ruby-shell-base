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
    cmd = input.shift

    return if cmd == 'exit'
    if respond_to? cmd
      send(cmd, *input)
    else
      puts cmd + ": Command not found"
    end
    true
  end
end
