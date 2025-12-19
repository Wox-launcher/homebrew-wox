cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v2.0.0-beta.7"

    on_arm do
      sha256 "9202454a2fa16217bb298bbfa9abbb5cfb31144a501855c98b1b6620321302f5"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.0-beta.7/wox-mac-arm64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.0-beta.7/",
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
