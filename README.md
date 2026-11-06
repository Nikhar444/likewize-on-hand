# Likewize On Hand

A mobile walkthrough of the Likewize proposition: device protection, digital care
and pre-owned solutions, with interactive claim, knowledgebase and trade-in demos.
It ships two ways from one source file.

| | |
| --- | --- |
| Live page | https://likewize-on-hand-web.vercel.app |
| iOS app | `LikewizeOnHand/LikewizeOnHand.xcodeproj` |

## Layout

| Path | What it is |
| --- | --- |
| `likewize-on-hand.html` | The source. Markup, styles and interactions in one file. Edit this. |
| `build.sh` | Wraps the source in a standalone HTML document and copies it to both targets. |
| `LikewizeOnHand/` | SwiftUI app that loads the page from its bundle, so it runs offline. |
| `likewize-on-hand-web/` | What gets deployed to Vercel. |
| `likewize-qr.png` | QR code for the live URL. |

## Editing

Change `likewize-on-hand.html`, then:

```sh
./build.sh
```

For the app, Run in Xcode. For the web, `cd likewize-on-hand-web && vercel deploy --prod`.

The content lives in the arrays near the bottom of the source: `PROGRAMMES` (the
vertical and capability panels), `CLAIM` (the claim journey), `KB` (the
knowledgebase answers), `DEVICES` and `COND` (the trade-in estimator), and
`QUOTES`. Brand tokens are in the `:root` block at the top.

## Running on a phone

The live URL works on any device. To put the native app on an iPhone, open the
project, set a Team under the target's Signing and Capabilities, pick the phone
as the destination and Run. Trust the certificate under Settings, General,
VPN and Device Management on first launch.

## Structure

Protect covers three verticals: DP (Device Protection), GTP and Home Tech. Repair, replacement and
extended warranty sit under Fulfilment, since they are ways a claim is covered
rather than programmes in their own right.

Demos are illustrative. Nothing is submitted, and the trade-in figures are not quotes.
Content is drawn from the public likewize.com site.
