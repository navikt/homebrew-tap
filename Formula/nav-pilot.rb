class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.03-053207-2103c52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-053207-2103c52/nav-pilot-darwin-arm64"
      sha256 "1b5106cb38522ec197857854ef7ccd20dbe3a6f93b5d65cfa74f4e12ebcaf860"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-053207-2103c52/nav-pilot-darwin-amd64"
      sha256 "646afb2202dae3e9b7a22502af677a9b8c95885e077de6c8ba0924c1617c3b6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-053207-2103c52/nav-pilot-linux-arm64"
      sha256 "d0e440e8b8003620c41cc601482cd0c0f458905d480b1ff0055c6a5f26e86cf5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-053207-2103c52/nav-pilot-linux-amd64"
      sha256 "9d01642546d47da8453cc8809d002be78fdf94871740152565f231f140cfb636"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
