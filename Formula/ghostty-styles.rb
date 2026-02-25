class GhosttyStyles < Formula
  desc "TUI for browsing, previewing, and applying Ghostty terminal themes"
  homepage "https://github.com/mcfearsome/ghostty.styles.tui"
  url "https://github.com/mcfearsome/ghostty.styles.tui/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f7512ec97b8898ef81d711e584fd563f9dabda02a4ca40d175ae241441db1e23"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Binary requires Ghostty terminal, so just check it runs and exits
    assert_match "ghostty", shell_output("#{bin}/ghostty-styles 2>&1", 1)
  end
end
