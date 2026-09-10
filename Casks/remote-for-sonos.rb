# Homebrew cask template. scripts/release.sh fills in the version and sha256 and
# pushes the result to the jens-wedin/homebrew-tap repository as Casks/remote-for-sonos.rb.
cask "remote-for-sonos" do
  version "0.1.1"
  sha256 "6910940e26fc853e456e376897b675e410e9ec14373ce27bd5b97737a9979bb9"

  url "https://github.com/jens-wedin/sonos-remote/releases/download/v#{version}/Remote-for-Sonos-#{version}.zip"
  name "Remote for Sonos"
  desc "Menu bar controller for Sonos speakers on the local network"
  homepage "https://github.com/jens-wedin/sonos-remote"

  depends_on macos: ">= :tahoe"

  app "Remote for Sonos.app"

  zap trash: [
    "~/Library/Containers/com.jenswedin.SonosRemote",
  ]
end
