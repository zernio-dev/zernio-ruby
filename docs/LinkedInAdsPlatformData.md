# Zernio::LinkedInAdsPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cost_type** | **String** | Campaign cost model (billing event). Defaults to &#x60;CPM&#x60;. Required when &#x60;unitCost&#x60; is set so the manual bid applies to an explicit cost model.  | [optional] |
| **unit_cost** | **Float** | Manual bid in WHOLE account-currency units (e.g. 2.5 &#x3D; $2.50). Requires &#x60;costType&#x60;. Omit for LinkedIn&#39;s automated (max delivery) bidding. LinkedIn enforces its own per-audience min/max bid bounds.  | [optional] |
| **optimization_target_type** | **String** | Campaign &#x60;optimizationTargetType&#x60; (e.g. &#x60;MAX_CLICK&#x60;, &#x60;TARGET_COST_PER_CLICK&#x60;, &#x60;MAX_IMPRESSION&#x60;). Forwarded verbatim, LinkedIn validates compatibility with the objective and &#x60;costType&#x60;. Omit for the objective-derived default: &#x60;awareness&#x60; gets &#x60;MAX_IMPRESSION&#x60;, &#x60;video_views&#x60; gets &#x60;MAX_VIDEO_VIEW&#x60;, and every other goal gets &#x60;MAX_CLICK&#x60;. &#x60;lead_generation&#x60; and &#x60;conversions&#x60; also get &#x60;MAX_CLICK&#x60;, because &#x60;MAX_LEAD&#x60; and &#x60;MAX_CONVERSION&#x60; need a lead gen form or a conversion rule that neither creation flow attaches. The default applies only to &#x60;SPONSORED_UPDATES&#x60; campaigns (every boost, and the image, video and carousel standalone ads), never to the &#x60;TEXT_AD&#x60;, &#x60;DYNAMIC&#x60; and &#x60;SPONSORED_INMAILS&#x60; campaigns the other creative formats produce. It is also skipped when &#x60;unitCost&#x60; or a non-&#x60;CPM&#x60; &#x60;costType&#x60; is set, since those select manual bidding and the bid is then yours to choose.  | [optional] |
| **creative_selection** | **String** | How LinkedIn rotates creatives within the campaign. Defaults to &#x60;OPTIMIZED&#x60;. | [optional] |
| **audience_expansion_enabled** | **Boolean** | Enable LinkedIn audience expansion. Defaults to false. | [optional] |
| **offsite_delivery_enabled** | **Boolean** | Deliver on the LinkedIn Audience Network. Defaults to false. | [optional] |
| **connected_television_only** | **Boolean** | Restrict delivery to Connected TV inventory. | [optional] |
| **carousel** | [**LinkedInAdsPlatformDataCarousel**](LinkedInAdsPlatformDataCarousel.md) |  | [optional] |
| **document** | [**LinkedInAdsPlatformDataDocument**](LinkedInAdsPlatformDataDocument.md) |  | [optional] |
| **spotlight** | [**LinkedInAdsPlatformDataSpotlight**](LinkedInAdsPlatformDataSpotlight.md) |  | [optional] |
| **follower** | [**LinkedInAdsPlatformDataFollower**](LinkedInAdsPlatformDataFollower.md) |  | [optional] |
| **jobs** | [**LinkedInAdsPlatformDataJobs**](LinkedInAdsPlatformDataJobs.md) |  | [optional] |
| **text_ad** | [**LinkedInAdsPlatformDataTextAd**](LinkedInAdsPlatformDataTextAd.md) |  | [optional] |
| **conversation** | [**LinkedInAdsPlatformDataConversation**](LinkedInAdsPlatformDataConversation.md) |  | [optional] |
| **event** | [**LinkedInAdsPlatformDataEvent**](LinkedInAdsPlatformDataEvent.md) |  | [optional] |
| **thought_leader** | [**LinkedInAdsPlatformDataThoughtLeader**](LinkedInAdsPlatformDataThoughtLeader.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformData.new(
  cost_type: null,
  unit_cost: null,
  optimization_target_type: null,
  creative_selection: null,
  audience_expansion_enabled: null,
  offsite_delivery_enabled: null,
  connected_television_only: null,
  carousel: null,
  document: null,
  spotlight: null,
  follower: null,
  jobs: null,
  text_ad: null,
  conversation: null,
  event: null,
  thought_leader: null
)
```

