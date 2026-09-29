class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-133900-dd34b58"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-133900-dd34b58/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "35ab8ebb0b3cd7590ab3a8fb1b552d62b6c528f90b7703b6662520d069c77fc9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-133900-dd34b58/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "64b685bd7ec91f00095c6f63bad417c263960d05e7dec84e84d05f21b103544f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-133900-dd34b58/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7689fe9dc6d2e1420706b94441fe8639a3a0892193f5234c046618396d42ac5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-133900-dd34b58/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69ef666725f82bdd1eb61400ace7001498b44e014d55c9cd30c1900d70c05423"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
