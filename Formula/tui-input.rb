class TuiInput < Formula
  include Language::Python::Virtualenv

  desc "Persistent tmux input bar for TUI agents"
  homepage "https://github.com/maked-dev/tui-input"
  url "https://github.com/maked-dev/tui-input/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "081775318bc756a59906611a69940405066e41516c4a66bd0cdacb1f1342de4b"
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
