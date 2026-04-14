class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.14-095325-5d28ed0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-095325-5d28ed0/nav-pilot-darwin-arm64"
      sha256 "a4417d34c7eafd251fcf77ac2356bae28ef1af9b134e69bb77bba03cd1b187aa"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-095325-5d28ed0/nav-pilot-darwin-amd64"
      sha256 "ccf50262aab6a8b4fa43454bee5a45607e1d16abea1fde87e7e6106f8c48d623"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-095325-5d28ed0/nav-pilot-linux-arm64"
      sha256 "9a133967a86b6da0dfe87af4ee02e77eab25640e5146f5404ca93a63394c6599"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-095325-5d28ed0/nav-pilot-linux-amd64"
      sha256 "2c43e5cdada414b472729774bd5cc94ed2924ff01714a0bb3e70af38c681670f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
