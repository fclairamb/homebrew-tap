class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.49.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.49.3/solidping-darwin-arm64.gz"
      sha256 "4861025373d32a17f81456f7d672ff5ff6ac5233be92c57878b39783deb62822"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.49.3/solidping-darwin-amd64.gz"
      sha256 "fe9b13ee76b96f040f3b2bf3340ad209f0731b41abdda6ace74527719e51ebc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.49.3/solidping-linux-arm64.gz"
      sha256 "7b4a5b5511ede83491629a133a95b8b3ec949b730258e83d4e2af68e2d6a0562"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.49.3/solidping-linux-amd64.gz"
      sha256 "84590bdf800f7dc50a258cb8951faffcf34660e5fe6eb7697d1eb86a3d355b68"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
