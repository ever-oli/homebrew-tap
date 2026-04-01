class Snapguard < Formula
  include Language::Python::Virtualenv

  desc "Interactive snapshot/cache guard for opencode and Cursor"
  homepage "https://github.com/ever-oli/snapguard"
  url "https://github.com/ever-oli/snapguard/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9c2dc217a674ea9dcfe44a9dde8259a96074d7940f083e3832009cdb8c4d0e0c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Snapshot Guard status", shell_output("#{bin}/snapguard --status")
  end
end
