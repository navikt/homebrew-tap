class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.11-082218-c76a7ac"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-082218-c76a7ac/nav-pilot-darwin-arm64"
      sha256 "bb5974081f46b26de1a9ce3c632627f212913e8fdc6299c51aeb8e9f588ea4ec"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-082218-c76a7ac/nav-pilot-darwin-amd64"
      sha256 "4f2ec62b0c30644f6a278707ac84ebcf27acfc0de1ccc1c709dc6c4000ed4e20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-082218-c76a7ac/nav-pilot-linux-arm64"
      sha256 "1c91abb616dc9be10a6ff20935219668fa68f8a430d6c5008d0eaec36677f002"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-082218-c76a7ac/nav-pilot-linux-amd64"
      sha256 "dacc5645069f9c44a7b71d40fad8b9724c3bc3203e1b15e77d1ba5a5c132111a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
