class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-135424-b53693f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-135424-b53693f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "809df5c16aa083a60d39dc23cdf0c6306c7821d8f24524a730e9d3b84460a3d9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-135424-b53693f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fc4d36bfaf845860c2b4173d378a54d260e112bbcdfc1653304ff12e3b555ba7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-135424-b53693f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19c179b2799623cdf5d2fc1fd23c0589d846360fba80e774be27965e8c72836f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-135424-b53693f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adec5efd997f8775bd262bf0707d6d9c21c07757e91f7b23376cd0de598bec34"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
