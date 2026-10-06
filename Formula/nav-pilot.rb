class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.06-132647-65cc92c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-132647-65cc92c/nav-pilot-darwin-arm64"
      sha256 "48f2aeb0000046211fc11aff22828be1a34ac8039f34bae644598833ccdf674c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-132647-65cc92c/nav-pilot-darwin-amd64"
      sha256 "84cefd0be6ffa2ad0e95175dd4890c7e8901ceb4e51aadb5e275bcf45ff7836d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-132647-65cc92c/nav-pilot-linux-arm64"
      sha256 "0c0b546b691b8146e1d2eb9ecde2f8064c538ad22a0acf0c343abc520799b242"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-132647-65cc92c/nav-pilot-linux-amd64"
      sha256 "4201020dc11d0ba9bc36be751cd7c5e51948c8bbbb2343c8cc064f1fc1392703"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
