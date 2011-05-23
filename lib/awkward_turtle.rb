class AwkwardTurtle
  @t1 = %q{
           _
          / \
      _  .""". _
    /` /`_\ /_`\ `\
     "`|_> _ <_|`"
       /\_-'-_/\
      /_/ `)` \_\
      ""       ""
  }
  @t2 = %q{
           _
          / \
       _ .""". _
      |/`_\ /_`\|
      "|_> _ <_|"
       /\_-'-_/\
       \_\`)`/_/
        ""   ""
  }

  # Animates the turtle in the shell
  def self.animate
    interrupted = false
    trap("INT") {interrupted = true}
    loop do
      [ @t1, @t2 ].each do |t|
        exit if interrupted
        system "clear"
        puts t
        sleep 1
      end
    end
  end
end
