class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.14-173922-ec5d668"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-173922-ec5d668/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "11d5df54bc8196fe1026391eefa79991a49f9f936fcff2f082b4687003f5f25c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-173922-ec5d668/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2ba65bb8b70a5436d54097e0e48809e8e88deffacab2a06d87f0e492c254eaf3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
