class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.29-210606-2806670"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.29-210606-2806670/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "039b2b6ddd613b674468c11996ac18b9952ae7da93fff345e2face56c3638634"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.29-210606-2806670/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3a85125c061e53ed9ef8c8eaf1dff7436b708b1e78afef5c4dcd25bfa5b4c2ea"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
