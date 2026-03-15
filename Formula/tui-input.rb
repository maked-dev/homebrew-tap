class TuiInput < Formula
  include Language::Python::Virtualenv

  desc "Persistent tmux input bar for TUI agents"
  homepage "https://github.com/maked-dev/tui-input"
  url "https://github.com/maked-dev/tui-input/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "d41582e7bcd0c8073520878b0275f78bbe2867bfbf20bc3cac577c09a01162a1"
  license "MIT"

  depends_on "python@3.13"
  depends_on "tmux"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-input --version")
  end
end
