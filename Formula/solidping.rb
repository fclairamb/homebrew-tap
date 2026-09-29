class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.36.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.1/solidping-darwin-arm64.gz"
      sha256 "f06e43667d9f2ae95275d0c6b53ab9ee3a6cc8f2754fa9b78923c7e86a01b576"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.1/solidping-darwin-amd64.gz"
      sha256 "2c04f97427bb9a68ca3969b7c220b28aebdc4f486314c6f55303ed9b8a4d47b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.1/solidping-linux-arm64.gz"
      sha256 "62b004b7810131ebf174ee17b0a8c6ed582230d376b09e49b409841d66427b49"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.1/solidping-linux-amd64.gz"
      sha256 "d0a1530d2e8baf28187c1f4246aeeea84a3f856fceb89db16ba0c413c8bbb06b"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
