cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v"

    on_arm do
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      url "https://github.com/Wox-launcher/Wox/releases/download/v/",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      url "https://github.com/Wox-launcher/Wox/releases/download/v/",
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
