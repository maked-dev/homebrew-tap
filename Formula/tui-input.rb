class TuiInput < Formula
  include Language::Python::Virtualenv

  desc "Persistent tmux input bar for TUI agents"
  homepage "https://github.com/maked-dev/tui-input"
  url "https://github.com/maked-dev/tui-input/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3eed6a7c8cfd2add067be623cc2c34a8be6342aba554864c3bc9a2d811de1646"
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
