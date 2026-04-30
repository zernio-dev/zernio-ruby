# Zernio::CreateStandaloneAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **goal** | **String** | Required on legacy + multi-creative shapes. Inherited from the ad set on the attach shape. Available goals vary by platform. Meta-specific: &#x60;conversions&#x60; requires &#x60;promotedObject.pixelId&#x60; + &#x60;promotedObject.customEventType&#x60;; &#x60;app_promotion&#x60; requires &#x60;promotedObject.applicationId&#x60; + &#x60;promotedObject.objectStoreUrl&#x60;; &#x60;lead_generation&#x60; accepts an optional &#x60;promotedObject.pageId&#x60; (auto-filled from the connected Page when omitted). | [optional] |
| **budget_amount** | **Float** | Required on legacy + multi-creative shapes. Inherited on attach. | [optional] |
| **budget_type** | **String** | Required on legacy + multi-creative shapes. Inherited on attach. | [optional] |
| **currency** | **String** |  | [optional] |
| **headline** | **String** | Required for Meta, Google, and Pinterest on legacy + attach shapes (skip for multi-creative — use &#x60;creatives[].headline&#x60;). Ignored for TikTok and X/Twitter. Max: Meta&#x3D;255, Google&#x3D;30, Pinterest&#x3D;100. | [optional] |
| **long_headline** | **String** | Google Display only. Defaults to &#x60;headline&#x60; if omitted. | [optional] |
| **body** | **String** | Required on legacy + attach shapes. For X/Twitter this is the tweet text (max 280 chars including a ~24-char URL when &#x60;linkUrl&#x60; is set). Max: Google&#x3D;90, Pinterest&#x3D;500. | [optional] |
| **call_to_action** | **String** | Required on legacy + attach shapes for Meta. Honoured on TikTok too — passes through to the Spark Ad creative&#39;s &#x60;call_to_action&#x60;. Ignored by other platforms. | [optional] |
| **link_url** | **String** | Required on legacy + attach shapes. Skip for multi-creative. | [optional] |
| **image_url** | **String** | Image creative for Meta/Google/Pinterest on legacy + attach shapes (mutually exclusive with &#x60;video&#x60;). Not required for Google Search campaigns. For TikTok, this field carries the VIDEO URL (the TikTok ads endpoint is video-only; the field retains the &#x60;imageUrl&#x60; name for cross-platform consistency). Ignored for X/Twitter. For Google Display, treated as the landscape image (alias of &#x60;images.landscape&#x60;); supply &#x60;images.square&#x60; alongside or the request is rejected. | [optional] |
| **images** | [**CreateStandaloneAdRequestImages**](CreateStandaloneAdRequestImages.md) |  | [optional] |
| **video** | [**CreateStandaloneAdRequestVideo**](CreateStandaloneAdRequestVideo.md) |  | [optional] |
| **creatives** | [**Array&lt;CreateStandaloneAdRequestCreativesInner&gt;**](CreateStandaloneAdRequestCreativesInner.md) | Meta-only. When present, switches to the multi-creative shape: creates 1 campaign + 1 ad set + N ads (one per entry here). Top-level &#x60;headline&#x60; / &#x60;body&#x60; / &#x60;imageUrl&#x60; / &#x60;linkUrl&#x60; / &#x60;callToAction&#x60; are ignored in this mode. Mutually exclusive with &#x60;adSetId&#x60;.  | [optional] |
| **ad_set_id** | **String** | Meta-only. When present, switches to the attach shape: adds one new ad to this existing ad set without creating a new campaign. Budget, targeting, goal, schedule, AND bid strategy are inherited from the ad set on Meta — passing &#x60;bidStrategy&#x60; in attach mode returns 400. To change an existing ad set&#39;s bid, use &#x60;PUT /v1/ads/ad-sets/{adSetId}&#x60;. Mutually exclusive with &#x60;creatives[]&#x60;.  Supported on Meta (facebook, instagram) and TikTok. On TikTok the &#x60;adSetId&#x60; is the ad group ID; the new ad inherits the ad group&#39;s bid + budget + targeting.  | [optional] |
| **business_name** | **String** | Google Display only | [optional] |
| **board_id** | **String** | Pinterest only. Board ID (auto-creates if not provided). | [optional] |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes (e.g. [&#39;NL&#39;]). Defaults to [&#39;US&#39;] when no &#x60;cities&#x60; or &#x60;regions&#x60; are provided. | [optional] |
| **cities** | [**Array&lt;CreateStandaloneAdRequestCitiesInner&gt;**](CreateStandaloneAdRequestCitiesInner.md) | Meta-only. City-level geo targeting. Each city is targeted by Meta&#39;s opaque &#x60;key&#x60; (the city ID) which can be looked up via &#x60;GET /v1/ads/targeting/search?type&#x3D;city&amp;q&#x3D;&lt;name&gt;&amp;country_code&#x3D;&lt;ISO&gt;&#x60;. Optional &#x60;radius&#x60; + &#x60;distance_unit&#x60; extend the targeting beyond the city limits (e.g. radius 25 km around the city center). Both must be set together, or both omitted (Meta defaults to ~16 km when omitted).  Cannot overlap with the same country in &#x60;countries&#x60; (Meta returns a \&quot;locations overlap\&quot; error). Either drop the country or scope it to a different country.  | [optional] |
| **regions** | [**Array&lt;CreateStandaloneAdRequestRegionsInner&gt;**](CreateStandaloneAdRequestRegionsInner.md) | Meta-only. Region-level (state/province) geo targeting. Each region is targeted by Meta&#39;s opaque &#x60;key&#x60; (the region ID) which can be looked up via &#x60;GET /v1/ads/targeting/search?type&#x3D;region&amp;q&#x3D;&lt;name&gt;&amp;country_code&#x3D;&lt;ISO&gt;&#x60;.  | [optional] |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **interests** | [**Array&lt;UpdateAdRequestTargetingInterestsInner&gt;**](UpdateAdRequestTargetingInterestsInner.md) | Interest objects from /v1/ads/interests. Each must include id and name. | [optional] |
| **end_date** | **Time** | Required for lifetime budgets | [optional] |
| **audience_id** | **String** | Custom audience ID for targeting | [optional] |
| **campaign_type** | **String** | Google only | [optional][default to &#39;display&#39;] |
| **keywords** | **Array&lt;String&gt;** | Google Search only | [optional] |
| **additional_headlines** | **Array&lt;String&gt;** | Google Search RSA only. Extra headlines. | [optional] |
| **additional_descriptions** | **Array&lt;String&gt;** | Google Search RSA only. Extra descriptions. | [optional] |
| **advantage_audience** | **Integer** | Meta only. Controls the Advantage audience feature (targeting_automation). 0 &#x3D; disabled (default), 1 &#x3D; enabled. Meta Marketing API requires this field on all ad set creation requests. | [optional] |
| **gender** | **String** | Meta only. Restrict the audience by gender. &#39;male&#39; targets men only, &#39;female&#39; targets women only, &#39;all&#39; (default) targets everyone. Ignored by non-Meta platforms. | [optional][default to &#39;all&#39;] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Meta bid strategy applied to the ad set. | [optional] |
| **bid_amount** | **Float** | Bid cap in WHOLE currency units (USD: 5 &#x3D; $5.00; JPY: 100 &#x3D; ¥100). Required when &#x60;bidStrategy&#x60; is &#x60;LOWEST_COST_WITH_BID_CAP&#x60; or &#x60;COST_CAP&#x60;.  | [optional] |
| **roas_average_floor** | **Float** | Minimum ROAS as a decimal multiplier (e.g. 2.0 &#x3D; 2.0x ROAS). Required when &#x60;bidStrategy&#x60; is &#x60;LOWEST_COST_WITH_MIN_ROAS&#x60;. Sent to Meta as &#x60;bid_constraints.roas_average_floor&#x60; × 10000.  | [optional] |
| **dsa_beneficiary** | **String** | Name of the legal entity benefiting from the ad. Required by Meta when targeting EU users (DSA Article 26). Not enforced at schema level; enforced server-side when targeting intersects EU member states.  | [optional] |
| **dsa_payor** | **String** | Name of the legal entity paying for the ad. Required by Meta when targeting EU users (DSA Article 26). Note Meta API spelling: dsa_payor (not dsa_payer).  | [optional] |
| **promoted_object** | [**CreateStandaloneAdRequestPromotedObject**](CreateStandaloneAdRequestPromotedObject.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  goal: null,
  budget_amount: null,
  budget_type: null,
  currency: null,
  headline: null,
  long_headline: null,
  body: null,
  call_to_action: null,
  link_url: null,
  image_url: null,
  images: null,
  video: null,
  creatives: null,
  ad_set_id: null,
  business_name: null,
  board_id: null,
  countries: null,
  cities: null,
  regions: null,
  age_min: null,
  age_max: null,
  interests: null,
  end_date: null,
  audience_id: null,
  campaign_type: null,
  keywords: null,
  additional_headlines: null,
  additional_descriptions: null,
  advantage_audience: null,
  gender: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  dsa_beneficiary: null,
  dsa_payor: null,
  promoted_object: null
)
```

