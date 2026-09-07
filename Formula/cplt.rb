class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-193448-a80370c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-193448-a80370c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e8a521717c6b469abbae07389c78dde6b2d7cb62a214e18cc52745aa69aa5528"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-193448-a80370c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "74f26da3b01d55e904590ec0775832771dd9d93cd81278dcaa3747137d70270f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-193448-a80370c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53a72b3589ef946623bf62178ba83723e4e38cde785a9d3ded67ca779e955705"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-193448-a80370c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a57088a8ab3d977eb242608cfbd4074adf212b2080927e85338e8d8f93da26ec"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
