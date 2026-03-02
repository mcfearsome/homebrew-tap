class GhosttyStyles < Formula
  desc "TUI for browsing, previewing, and applying Ghostty terminal themes"
  homepage "https://github.com/mcfearsome/ghostty.styles.tui"
  url "https://github.com/mcfearsome/ghostty.styles.tui/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "8a4999c3a55a29090cf49a87085a18314824f8a391568e94b61c3a34ad2a7a27"
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
