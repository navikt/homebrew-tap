class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-065427-1150610"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-065427-1150610/nav-pilot-darwin-arm64"
      sha256 "d55bad86ba0bcd42093c30c5546a103b90ec5352fe4d491ffd781b073a5e100b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-065427-1150610/nav-pilot-darwin-amd64"
      sha256 "e134eb2c3226e052e62341f6ad7373537caf35f99fbffce574c4d7af17f583bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-065427-1150610/nav-pilot-linux-arm64"
      sha256 "863dbd98ac81b21a6af1038d213bf1fc9eff60b3c695e89cb60e548a2d7e0ea1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-065427-1150610/nav-pilot-linux-amd64"
      sha256 "379e2d044c39c5cf3cb7145d3b087bf3e2a0a688770cde5457d02da0b35f5732"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
