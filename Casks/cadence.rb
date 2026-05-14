cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "2530e2dab570211284137a296a8cef3bc21adb6117b335d052d1a1fadc62115b",
         intel: "0861975758ca1d6e740688f844deef8232b7082d6aff42960a603d276169850c"

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
