require 'shell_base/version'
require 'readline'

class ShellBase
  class Exit < Exception; end
  def self.prompt(s)
    @@default_prompt = s
  end

  def initialize
    @prompt = @@default_prompt
    while readline; end
  end

  def exit
    puts "bye."
    raise Exit
  end

  def method_missing(method_name)
    puts method_name.to_s + ": Command not found"
  end

  def readline
    input = Readline.readline(@prompt, true).split(" ")
    cmd = input.shift

    begin
      send(cmd, *input)
    rescue Exit
      return false
    end
    true
  end
end
