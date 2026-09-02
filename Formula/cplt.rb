class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.02-164136-a480712"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-164136-a480712/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a898efdf56d67d73d5ddcc8f653f4ae12c4861831f140d443eb718e95777317e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-164136-a480712/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "105c9312f5b178abfb857e6441b6383ae1ad79f85b184d2a870241634e154d32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-164136-a480712/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee08d290d0ab9d54c81f6cd355f16c690b56eea4e0be7460f6d4c49a4a732f5c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-164136-a480712/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a74ad8169e44a081f8cc3b8d0efe119548d4e458063c946309a4fabdc8c2ae21"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
