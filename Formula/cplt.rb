class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.02-225851-d840db9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-225851-d840db9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2655721b9416e9b6f6e740be5f8e165bae1607c11344d49708708d6e111bd3f8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-225851-d840db9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e254584ee831e11679ce847d81969a8b9cbfd07fe8a9a40a1b4d80c431923e66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-225851-d840db9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d024524691f6f76914ac49b04c4a3fb225a66aa43783834594327805ecdb63a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-225851-d840db9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee67d8b1fe827220fadbe3154e53c3185dba549b0874b2bc08968626a2cef727"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
