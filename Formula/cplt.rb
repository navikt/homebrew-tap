class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-075217-4452b62"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-075217-4452b62/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5a393be6178ee938accd6e76c02f89bce809f726c2067ce1b52ad7f30d3c30ee"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-075217-4452b62/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "255c5e843021a03181b74b1373b1ab196466b8edb06944ce840afb8cc52e3c53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-075217-4452b62/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97bf694fb879b7f83090337e5ff2170570125c47a76a7e502cb936873838ade0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-075217-4452b62/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "110fb8931e5a0ed2f32d21094a1e2a6fe3e2f6f40c36c2e5e695bf3400e6708e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
