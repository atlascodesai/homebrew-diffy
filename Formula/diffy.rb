class Diffy < Formula
  desc "A modern, native diff tool for macOS"
  homepage "https://github.com/atlascodesai/diffy"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atlascodesai/diffy/releases/download/v0.1.0/diffy-aarch64-apple-darwin.tar.gz"
      sha256 "51d44eadad17052ff65f1674136b52163a93d117b94ae8fd8aab2d7beb18b8b3"
    else
      url "https://github.com/atlascodesai/diffy/releases/download/v0.1.0/diffy-x86_64-apple-darwin.tar.gz"
      sha256 "c6fb6b93ccb95a6aab98d03bb726e3d720ba42b80d67363fc4a2d62bec149594"
    end
  end

  def install
    prefix.install "Diffy.app"
    bin.write_exec_script prefix/"Diffy.app/Contents/MacOS/diffy"
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
