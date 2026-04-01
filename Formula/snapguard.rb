class Snapguard < Formula
  include Language::Python::Virtualenv

  desc "Interactive snapshot/cache guard for opencode and Cursor"
  homepage "https://github.com/ever-oli/snapguard"
  url "https://github.com/ever-oli/snapguard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d2849fec31f80ba334f9aa3cc3cb67852810ac1ff703e9f127ce0e5b9843db97"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Snapshot Guard status", shell_output("#{bin}/snapguard --status")
  end
end
