cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v2.0.1"

    on_arm do
      sha256 "2ec186f0cf3a14e92e592ad1676e16b187ccce38b2fdbd50c5f0653d3302633c"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.1/wox-mac-arm64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "6c724618d04d30f026143c3a45721604922531c8307d51de984afaa6394f37f0"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.1/wox-mac-amd64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
  
    name "Wox"
    desc "A cross-platform launcher that simply works"
    homepage "https://github.com/Wox-launcher/Wox"
  
    depends_on macos: ">= :big_sur"
  
    livecheck do
      url :url
      strategy :github_latest
    end

    app "Wox.app"

    zap trash: [
      "~/.wox"
    ]
  end
