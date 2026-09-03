class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.03-194555-9308088"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-194555-9308088/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2109531fb5a25d0a59b77db6830799bc742ec518bb0619a7cf1f6a4d96ff0d59"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-194555-9308088/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "edb894f7dfd68167a07fda4facfa3846dca300c56916adc3e0609fe52cdf3fec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-194555-9308088/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "077db368e7045ab95736536ef4a96d0ae6630ddb40137b02c2646b0344ae2564"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.03-194555-9308088/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fed824eaab8fd950ea037bd100099953653c512d0c53b76bfa29212737c09ca"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
