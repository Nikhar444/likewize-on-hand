# Likewize On Hand — iOS

A dummy iOS app that carries the Likewize walkthrough: protection, digital care
and device renewal, with interactive claim, knowledgebase and trade-in demos.

Open `LikewizeOnHand.xcodeproj`, pick a simulator or your iPhone, and hit Run.

## How it is put together

| File | What it does |
| --- | --- |
| `LikewizeOnHand/LikewizeOnHandApp.swift` | SwiftUI app entry point |
| `LikewizeOnHand/ContentView.swift` | Full-bleed shell; brand violet behind the status bar |
| `LikewizeOnHand/WebView.swift` | `WKWebView` that loads the bundled page; outward links go to Safari |
| `LikewizeOnHand/index.html` | The whole walkthrough — markup, styles and interactions in one file |
| `LikewizeOnHand/Assets.xcassets` | App icon (the Likewize dot field), accent and launch colours |

The page is bundled inside the app, so it runs with no network and no sign-in.
The only things it fetches are the Google Fonts faces and the QR library; both
fall back cleanly offline.

## Running on your own iPhone

1. Open the project, select the **LikewizeOnHand** target → **Signing & Capabilities**.
2. Set **Team** to your Apple ID and change the bundle identifier if
   `com.likewize.onhand` is taken (for example `com.yourname.likewize`).
3. Plug the phone in, pick it as the run destination, and Run. On first launch,
   trust the developer certificate under Settings → General → VPN & Device Management.

## Editing the content

Everything visible lives in `index.html`. Change the copy, the demo data (the
`PROGRAMMES`, `CLAIM`, `KB` and `DEVICES` arrays near the bottom) or the brand
tokens in the `:root` block at the top, then Run again.

Demos are illustrative. Nothing is submitted, and the trade-in figures are not quotes.
