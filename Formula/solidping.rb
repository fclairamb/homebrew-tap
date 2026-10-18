class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.39.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.39.0/solidping-darwin-arm64.gz"
      sha256 "46a58fb54b842aa4ea7c99465b33fe44af82e174840aa8adc7136ce81bd616e5"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.39.0/solidping-darwin-amd64.gz"
      sha256 "9b467f0f515082ae1ba2629ed0b96d28ad935d0e6039f5caa3be22fb6b1c8861"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.39.0/solidping-linux-arm64.gz"
      sha256 "f69eb3c5117bb6947c8a5fc326e960592b506ea5d9a91c071a0d3734c20aab46"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.39.0/solidping-linux-amd64.gz"
      sha256 "af62df8e3884b12f649a9e785eb8546eeab4f4339d042a36b0d9ed5f8779b422"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
