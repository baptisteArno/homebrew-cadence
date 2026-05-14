cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "6bbe2130793682020c828653e0174ee9c8d9ba614c4de94ddef640126566a67f",
         intel: "b2aee4c42f301d88b8c295f5da98d4ecffc0ee4cd7c7ad3caa1389f401ff99c9"

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
