class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-165412-524c840"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-165412-524c840/nav-pilot-darwin-arm64"
      sha256 "cd06666bb9129e9ba5c6c312e39d5bdc4e64bc52d6eb06f2a3e81278ce4c5647"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-165412-524c840/nav-pilot-darwin-amd64"
      sha256 "e1cb2b82fd8d155375c611150be5e41b073d5749ce4a750bab9669b9056aa0ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-165412-524c840/nav-pilot-linux-arm64"
      sha256 "34ec10bd9efe5d25a98ed58e3b164cfc238554a421d91cbf5d8d9ed13beafd2f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-165412-524c840/nav-pilot-linux-amd64"
      sha256 "03cd79f631a85b497c5b925ad20a59ed190814b90c5a283e842d81007a07cb37"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
