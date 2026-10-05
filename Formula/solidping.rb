class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.38.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.0/solidping-darwin-arm64.gz"
      sha256 "72005af7083f61a3df95027e083fde7768b3b9e8ad3088fec83be3da721fa468"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.0/solidping-darwin-amd64.gz"
      sha256 "db75289d7caab3dc21441905f7ea7b7002fbd0eb7c6e37f7a4928dfe3bb807fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.0/solidping-linux-arm64.gz"
      sha256 "b0c9b465361c67e0929282580bd3c2d3c76c61d4cff0052eeb530986bc1ca45c"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.0/solidping-linux-amd64.gz"
      sha256 "a9537a629ef0e5753f6cd2e89a7f33572664693e879c20fed93985f6850ebb7d"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
