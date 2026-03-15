class TuiInput < Formula
  include Language::Python::Virtualenv

  desc "Persistent tmux input bar for TUI agents"
  homepage "https://github.com/maked-dev/tui-input"
  url "https://github.com/maked-dev/tui-input/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d7cdec7981326d991bc1beffd4197dba0c2330e5aa4cabcbee4d8f9c4e4097a8"
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
