class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.02-233906-6bb724e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-233906-6bb724e/nav-pilot-darwin-arm64"
      sha256 "96760a0e9860703db2cfadd46b6101add127211bf9d503627b999144966e60fd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-233906-6bb724e/nav-pilot-darwin-amd64"
      sha256 "9b95b262b38e237c3a75e4796d55b13310f06c963a9f02a951b16b4baee9f69c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-233906-6bb724e/nav-pilot-linux-arm64"
      sha256 "dafef9aa6897a122df672c09c55fc5cc7ca3ec08191bd70412cfafcded6593c8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-233906-6bb724e/nav-pilot-linux-amd64"
      sha256 "e51e7813a9fc20cd5d8533f6c7e7fab9f172948196d207861d94d18f7ca4ab1b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
