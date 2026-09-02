class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.02-160308-50e0639"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-160308-50e0639/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "727cab3aaec39082a3746f1c640c2cc064c60287cc7c50c3ec72691c624b713d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-160308-50e0639/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6f397211a328584994a9381a456b94c9878d297fd761172256fa11bc46bf86f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-160308-50e0639/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54b745c7513993c3fcb3da6607a3b39557816493c2775f09af7f8dc63c5c8c33"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.02-160308-50e0639/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87fcc6aa00500eba0643c410a9fcdfbbf0d3d42fedf80b737d3c6bc543f92275"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
