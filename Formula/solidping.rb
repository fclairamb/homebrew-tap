class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.40.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.40.0/solidping-darwin-arm64.gz"
      sha256 "c1ea35940f46577748a83d058cff9e11325b3203afedc67d056f6bac210bc6d9"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.40.0/solidping-darwin-amd64.gz"
      sha256 "41feaa120270765c7ee952e2f2f01b1a20ed7fcad7ef30803f1abbffe1a9226b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.40.0/solidping-linux-arm64.gz"
      sha256 "87a9af50da066890f5c05402f2f440a0170b2e9728c29ebfd20b2131d84f5b8e"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.40.0/solidping-linux-amd64.gz"
      sha256 "23b2efc710c613ceeeecff791ba8b495daf69c7032cd3471184b11d4355e8fbf"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
