class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.37.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.37.0/solidping-darwin-arm64.gz"
      sha256 "0221c63455ecf9f1b0bbb9d21995f647cb5fc73f97b9602c7ee3671ace5e4dfc"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.37.0/solidping-darwin-amd64.gz"
      sha256 "bc247b86a14e475b96c29cadc53b047a0df2c78169c5bd119dd3b32d63dc9151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.37.0/solidping-linux-arm64.gz"
      sha256 "da77cf15de157f75f6f70950b2c85afb94c7888dd3eb5d7e4b630a647e0c06c3"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.37.0/solidping-linux-amd64.gz"
      sha256 "e0d9c1548e6c98c47f6501a730a2cda34734bf3d33b0bc62c5728c3b7c9d22b8"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
