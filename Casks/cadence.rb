cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "8385ddf1b712a19de9cd105bb4351e89591f20d1edd7d575f9094db5c345e880",
         intel: "3d0d1c4113fefa55d7d44a0f1481cc9f0c53b8329a6dcad09555afb2cf1a54d8"

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
