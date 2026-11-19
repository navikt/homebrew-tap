class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.19-170333-35a6db2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-170333-35a6db2/nav-pilot-darwin-arm64"
      sha256 "7a9b923a87d18a4261b463df658f6ab586cc24b7286f6de84af5f86175734157"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-170333-35a6db2/nav-pilot-darwin-amd64"
      sha256 "831c837ecbe18aa2ddbdead0541002d9a8f6dfbd0d21f6140faebd990e0548d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-170333-35a6db2/nav-pilot-linux-arm64"
      sha256 "c45942e2b814319a35ddc1c3d5aa7a34dbc248701ba2e5a958fc8f7327fc381b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-170333-35a6db2/nav-pilot-linux-amd64"
      sha256 "03f694322d8f79ca4f4679448c8815ca459934c70ced323aaee734acee16bfc0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
