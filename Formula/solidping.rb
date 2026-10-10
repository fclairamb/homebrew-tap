class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.38.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.1/solidping-darwin-arm64.gz"
      sha256 "65b924a02eda909cdd3cf864605ab9da61b8eaca64170dbe60955c507fe481e5"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.1/solidping-darwin-amd64.gz"
      sha256 "f190b94a6f3af2ade0698539eb0608eb595e80876a972b4311620abd88f7c7a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.1/solidping-linux-arm64.gz"
      sha256 "b37fd94fd0ba4776870e238b6ca5371b6b8c4c216261faecd902d4812459b760"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.1/solidping-linux-amd64.gz"
      sha256 "52fea497730b1bff4eb72235b5d1b770f864aaee06d5d647867e1c47429c8eb9"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
