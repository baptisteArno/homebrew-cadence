cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "879bc39aa4502c3e453d892c060356f38eb5a549870b2b23b28f5661b725978c",
         intel: "fb11c21c6192ff6cbdd80d83c92e79a60394a0fbeb8772940c7d15cd2f3b59df"

  url "https://github.com/baptisteArno/cadence/releases/download/cadence-v#{version}/Cadence-#{version}-#{arch}.dmg"
  name "Cadence"
  desc "GUI for coding agents"
  homepage "https://github.com/baptisteArno/cadence"

  livecheck do
    url :homepage
    regex(/^cadence-v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Cadence.app"
end
