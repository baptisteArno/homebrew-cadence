cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "16255f6d9353ca8d8cfd1c5a5a171f18e47b92945e895af7d5683c9ff032434d",
         intel: "885aa526548b1b387fd1053d75bac326af05914e78549bcd68e27248574b4cdc"

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
