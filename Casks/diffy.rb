cask "diffy" do
  version "0.1.0"
  sha256 arm:   "51d44eadad17052ff65f1674136b52163a93d117b94ae8fd8aab2d7beb18b8b3",
         intel: "c6fb6b93ccb95a6aab98d03bb726e3d720ba42b80d67363fc4a2d62bec149594"

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
