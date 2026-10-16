class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.38.6"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.6/solidping-darwin-arm64.gz"
      sha256 "0d72cddbc8721944bd4797565a9c266dad73f6156fde34e912e47d860ee38619"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.6/solidping-darwin-amd64.gz"
      sha256 "dc70bc168c19e4e3eff04d3af221e5fa8cdf1f21f16464764a84e3ab4267fdb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.6/solidping-linux-arm64.gz"
      sha256 "86737ae5e9a8c372df9b6fcc1070ce2321b6bd69defd12ba7701ac767a618dfd"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.38.6/solidping-linux-amd64.gz"
      sha256 "fc2c415429e02cb0d13697a8fe52162ed3a3130d26dfe9348f868d540b33f706"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
