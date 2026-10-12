class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.38.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.3/solidping-darwin-arm64.gz"
      sha256 "36986144a41e03bb9e545dfd481ba50c1c8bf784ea9ce39626d8d33b77ae83a3"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.3/solidping-darwin-amd64.gz"
      sha256 "8b457baf95e9b286cfe739b4a6795390a04768d30873d6ee579e0761b50a228e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.3/solidping-linux-arm64.gz"
      sha256 "27e500d88d7baeed27113b4b8e8516d2dc6eccaf16462dba7a03a73520f1ea7b"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.3/solidping-linux-amd64.gz"
      sha256 "a5d7c98a4cfa8c1a50faef36abe72942874262b902de3e45558296ce857be60d"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
