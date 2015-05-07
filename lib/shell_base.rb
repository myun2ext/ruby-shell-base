require 'shell_base/version'
require 'readline'

class ShellBase
  class Exit < Exception; end

  def initialize
    while readline; end
  end

  def prompt
    "$ "
  end

  def exit
    puts "bye."; raise Exit
  end

  def method_missing(method_name)
    puts method_name.to_s + ": Command not found"
  end

  def readline
    input = Readline.readline(prompt, true).split(" ")
    cmd = input.shift
    if cmd
      begin
        send(cmd, *input)
      rescue Exit
        return false
      end
    end
    true
  end
end
