class Diffy < Formula
  desc "A modern, native diff tool for macOS"
  homepage "https://github.com/atlascodesai/diffy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atlascodesai/diffy/releases/download/v0.1.0/diffy-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_SHA256"
    else
      url "https://github.com/atlascodesai/diffy/releases/download/v0.1.0/diffy-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  def install
    prefix.install "Diffy.app"
    bin.install_symlink "#{prefix}/Diffy.app/Contents/MacOS/diffy"
  end

  def caveats
    <<~EOS
      Diffy has been installed as an application.

      To open the app:
        open -a Diffy

      Or run from terminal:
        diffy
    EOS
  end

  test do
    assert_predicate prefix/"Diffy.app/Contents/MacOS/diffy", :exist?
  end
end
