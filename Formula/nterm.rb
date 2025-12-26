class Nterm < Formula
  desc "Terminal IDE with file tree, editor, terminal, and AI chat (GUI and TUI)"
  homepage "https://github.com/ashishtyagi10/nterm"
  url "https://github.com/ashishtyagi10/nterm/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "51eb6cdd5ed52636f3218d40e1eec14d9e6f45ea6e0dd7a5b3059c82ffaeaaf3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: nil)
  end

  test do
    # nterm requires a TTY, so just check binaries exist
    assert_predicate bin/"nterm", :exist?
    assert_predicate bin/"nterm-cli", :exist?
  end
end
