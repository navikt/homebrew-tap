class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.27-123256-504b7af"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-123256-504b7af/nav-pilot-darwin-arm64"
      sha256 "891cf51e888a8fb992d824bccc75c865a349650b51d460c5cf83969f32a0e7e5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-123256-504b7af/nav-pilot-darwin-amd64"
      sha256 "e841af0e6bea8c290fc38b32853f3600117552aa18e3bf9e9e2a41e6560306a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-123256-504b7af/nav-pilot-linux-arm64"
      sha256 "ec205f4f90bd87a11b8a960e9e40d67a914557133a8275bc4c49504b8b0f5405"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-123256-504b7af/nav-pilot-linux-amd64"
      sha256 "6aea4dea59a0a6b0e786bf8a834ae017a0874e53d81daf87e1acf40eb27de746"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
