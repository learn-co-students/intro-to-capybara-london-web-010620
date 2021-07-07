require 'rainbow/string_utils'
require 'rainbow/color'

module Rainbow

  class Presenter < ::String

    TERM_EFFECTS = {
      :reset     => 0,
      :bright    => 1,
      :italic    => 3,
      :underline => 4,
      :blink     => 5,
      :inverse   => 7,
      :hide      => 8,
    }

    # Sets color of this text.
    def color(*values)
      wrap_with_sgr(Color.build(:foreground, values).codes)
    end

    alias_method :foreground, :color
    alias_method :fg, :color

    # Sets background color of this text.
    def background(*values)
      wrap_with_sgr(Color.build(:background, values).codes)
    end

    alias_method :bg, :background

    # Resets terminal to default colors/backgrounds.
    #
    # It shouldn't be needed to use this method because all methods
    # append terminal reset code to end of string.
    def reset
      wrap_with_sgr(TERM_EFFECTS[:reset])
    end

    # Turns on bright/bold for this text.
    def bright
      wrap_with_sgr(TERM_EFFECTS[:bright])
    end

    # Turns on italic style for this text (not well supported by terminal
    # emulators).
    def italic
      wrap_with_sgr(TERM_EFFECTS[:italic])
    end

    # Turns on underline decoration for this text.
    def underline
      wrap_with_sgr(TERM_EFFECTS[:underline])
    end

    # Turns on blinking attribute for this text (not well supported by terminal
    # emulators).
    def blink
      wrap_with_sgr(TERM_EFFECTS[:blink])
    end

    # Inverses current foreground/background colors.
    def inverse
      wrap_with_sgr(TERM_EFFECTS[:inverse])
    end

    # Hides this text (set its color to the same as background).
    def hide
      wrap_with_sgr(TERM_EFFECTS[:hide])
    end

    def black
      color(:black)
    end

    def red
      color(:red)
    end

    def green
      color(:green)
    end

    def yellow
      color(:yellow)
    end

    def blue
      color(:blue)
    end

    def magenta
      color(:magenta)
    end

    def cyan
      color(:cyan)
    end

    def white
      color(:white)
    end

    private

    def wrap_with_sgr(codes) #:nodoc:
      self.class.new(StringUtils.wrap_with_sgr(self, [*codes]))
    end

  end

end
