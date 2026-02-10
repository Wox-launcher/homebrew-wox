cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v2.0.0"

    on_arm do
      sha256 "02d0f310bc6665f9a4145f0f4ea4a5d3dcc8dd202256867497939659e7c057e3"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.0/wox-mac-arm64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "5110faf4971b4589dc63bf8e3b193f3a7bb253056945b41b67a518a804769d5c"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.0/wox-mac-amd64.dmg",
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
