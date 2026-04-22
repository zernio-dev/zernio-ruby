# Zernio::CreateStandaloneAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **goal** | **String** | Required on legacy + multi-creative shapes. Inherited from the ad set on the attach shape. Available goals vary by platform. | [optional] |
| **budget_amount** | **Float** | Required on legacy + multi-creative shapes. Inherited on attach. | [optional] |
| **budget_type** | **String** | Required on legacy + multi-creative shapes. Inherited on attach. | [optional] |
| **currency** | **String** |  | [optional] |
| **headline** | **String** | Required on legacy + attach shapes (skip for multi-creative — use &#x60;creatives[].headline&#x60;). Max: Meta&#x3D;255, Google&#x3D;30, Pinterest&#x3D;100 | [optional] |
| **long_headline** | **String** | Google Display only | [optional] |
| **body** | **String** | Required on legacy + attach shapes. Max: Google&#x3D;90, Pinterest&#x3D;500 | [optional] |
| **call_to_action** | **String** | Required on legacy + attach shapes. Meta only. | [optional] |
| **link_url** | **String** | Required on legacy + attach shapes. Skip for multi-creative. | [optional] |
| **image_url** | **String** | Required on legacy + attach shapes. Not required for Google Search campaigns. | [optional] |
| **creatives** | [**Array&lt;CreateStandaloneAdRequestCreativesInner&gt;**](CreateStandaloneAdRequestCreativesInner.md) | Meta-only. When present, switches to the multi-creative shape: creates 1 campaign + 1 ad set + N ads (one per entry here). Top-level &#x60;headline&#x60; / &#x60;body&#x60; / &#x60;imageUrl&#x60; / &#x60;linkUrl&#x60; / &#x60;callToAction&#x60; are ignored in this mode. Mutually exclusive with &#x60;adSetId&#x60;.  | [optional] |
| **ad_set_id** | **String** | Meta-only. When present, switches to the attach shape: adds one new ad to this existing ad set without creating a new campaign. Budget, targeting, goal, and schedule are inherited from the ad set on Meta. Mutually exclusive with &#x60;creatives[]&#x60;.  | [optional] |
| **business_name** | **String** | Google Display only | [optional] |
| **board_id** | **String** | Pinterest only. Board ID (auto-creates if not provided). | [optional] |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
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
  creatives: null,
  ad_set_id: null,
  business_name: null,
  board_id: null,
  countries: null,
  age_min: null,
  age_max: null,
  interests: null,
  end_date: null,
  audience_id: null,
  campaign_type: null,
  keywords: null,
  additional_headlines: null,
  additional_descriptions: null,
  advantage_audience: null
)
```

