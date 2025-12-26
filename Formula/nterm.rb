class Nterm < Formula
  desc "A terminal-based IDE with file tree, editor, terminal, and AI chat"
  homepage "https://github.com/ashishtyagi10/nterm"
  url "https://github.com/ashishtyagi10/nterm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0d0212672f9281f82211006fa948aa4efa53f4892a4d8b279036531e8783c441"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # nterm requires a TTY, so just check it exists
    assert_predicate bin/"nterm", :exist?
  end
end
