class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.38.5"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.5/solidping-darwin-arm64.gz"
      sha256 "e50f43218bd7e7ca21aab3b255a7043114a068f659206a1536dc66d1dfcfe7f2"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.5/solidping-darwin-amd64.gz"
      sha256 "8c55d88fc502f0a7438f12fed6146cccdde913f679a734e261f744935825f6b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.5/solidping-linux-arm64.gz"
      sha256 "4c4b568aa2ad552607cb7f89f0976fe63015be485cb172036db02b702e3eb558"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.5/solidping-linux-amd64.gz"
      sha256 "7a36925bcfc9a3668e8285d7a5cf4bc35bd8709cd5a1ebdaed3eb945abd1b741"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
