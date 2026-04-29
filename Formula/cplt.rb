class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.29-124203-3c26186"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.29-124203-3c26186/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d84c37e793387d21363688023103b9c7167058f118fa035f902ac3f5ed1850d5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.29-124203-3c26186/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b65e49b34bcd3ab006e51b7ec64007c41798e8df91bfc96c1b620d507cffb6ec"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
