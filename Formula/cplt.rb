class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-183013-0891221"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-183013-0891221/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8a862d5f2c06d0343a37c536935b304c351366b752f20b9856b407209e48e696"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-183013-0891221/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "02e5ff247ca2772f20d351d1f2d05da2837f6bae43f78143c57b4cd30f17e49f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-183013-0891221/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55f020949727db25bfbb57e291269d82040bc43bca1a6c5afb56a5cd66e611e0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-183013-0891221/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f58cdb74af6ddd4960d3c8c33a105a275997e916c1c067c54b6a75e212ad45e4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
