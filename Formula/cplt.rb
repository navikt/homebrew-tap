class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.02-134616-4970b0e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-134616-4970b0e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "eb68285500bf45d63367dcdbd645417bd3bd82f05352b254efe8327fff8b6ac0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-134616-4970b0e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "80cd4e98d222250d1660969d960616556f02102389ecda9ef81f8118e27e6971"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-134616-4970b0e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "318bd9d5c1526c9a01df60f4d127d382e191d92ef3bfa19af57f4c690afdb589"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.02-134616-4970b0e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "479ef88e320999fe0b23d53564d59ab869bf2b5eacf9cc321a784afbe4a9d224"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
