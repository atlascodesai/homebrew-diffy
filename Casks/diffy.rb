cask "diffy" do
  version "0.1.1"
  sha256 arm:   "3faa4c768ba9f7b467084d9f2773247243eb21ae4cb51d40a7b02f64cb365a5b",
         intel: "d80e1235d84884065889ae1cab7f8e352b25ff624a5639bf1244b8c61c9fda8c"

  arch arm: "aarch64", intel: "x86_64"

  url "https://github.com/atlascodesai/diffy/releases/download/v#{version}/diffy-#{arch}-apple-darwin.tar.gz"
  name "Diffy"
  desc "Modern, native diff tool for macOS"
  homepage "https://github.com/atlascodesai/diffy"

  app "Diffy.app"

  binary "#{appdir}/Diffy.app/Contents/MacOS/diffy"

  zap trash: [
    "~/Library/Application Support/com.atlascodesai.diffy",
    "~/Library/Caches/com.atlascodesai.diffy",
    "~/Library/Preferences/com.atlascodesai.diffy.plist",
  ]
end
