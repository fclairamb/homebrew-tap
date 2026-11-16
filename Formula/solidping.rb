class Solidping < Formula
  desc "Self-hostable uptime monitoring: 40 check types, multi-region, status pages"
  homepage "https://solidping.io"
  version "0.50.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/fclairamb/solidping/archive/refs/tags/v0.50.2.tar.gz"
      sha256 "a6fbea838b67d00c9ab7f0cefedaafb905bd44d7c047e4407b06bdfecb26d95c"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.50.2/solidping-darwin-amd64.gz"
      sha256 "6b24e3b462b5e65b57b48dd462479ad6dbb59f7634c8fde342513a040ec7e623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fclairamb/solidping/releases/download/v0.50.2/solidping-linux-arm64.gz"
      sha256 "0ba9995f2059ca55fe2837ff506b406bc96ae5deeeae390c6771134031f76469"
    end
    on_intel do
      url "https://github.com/fclairamb/solidping/releases/download/v0.50.2/solidping-linux-amd64.gz"
      sha256 "16b83980d16b23e31d692b47d9e82d8d69e47699b5138006b93b052d8ec84bef"
    end
  end

  def install
    bin.install Dir["solidping-*"].first => "solidping"
  end

  # config.yml and the SQLite database live in the working directory.
  service do
    run [opt_bin/"solidping", "serve"]
    working_dir var/"solidping"
    keep_alive crashed: true
    log_path var/"log/solidping.log"
    error_log_path var/"log/solidping.log"
  end

  test do
    assert_match "SolidPing monitoring service", shell_output("#{bin}/solidping --help")
  end
end
