class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.36.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.0/solidping-darwin-arm64.gz"
      sha256 "a36bfce6835178a3582e67e70bafa872c48b6d155d1b17318884894e6ce375c6"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.0/solidping-darwin-amd64.gz"
      sha256 "208ef84be7fa459d62253c4728e5bb959fe966d0c1c4c81db132ee955dd53b80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.0/solidping-linux-arm64.gz"
      sha256 "26607ad57cd18141150c08c19f49875d29ab0cebe1a4718de22d542efe32cdc1"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.36.0/solidping-linux-amd64.gz"
      sha256 "be969297e87f9574120f1de3a76dc0def8ef6c52cf7fc1da2c31a2f88ef14f3e"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
