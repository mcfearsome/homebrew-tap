class GhosttyStyles < Formula
  desc "TUI for browsing, previewing, and applying Ghostty terminal themes"
  homepage "https://github.com/mcfearsome/ghostty.styles.tui"
  url "https://github.com/mcfearsome/ghostty.styles.tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "baae4bbb70d42455ab6bbb397429b58054fa358233b2129cd284e396791e3cc3"
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
