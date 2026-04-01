# Late::CreateStandaloneAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **goal** | **String** |  |  |
| **budget_amount** | **Float** |  |  |
| **budget_type** | **String** |  |  |
| **currency** | **String** |  | [optional] |
| **headline** | **String** | Required for most platforms. Max: Meta&#x3D;255, Google&#x3D;30, Pinterest&#x3D;100 | [optional] |
| **body** | **String** | Max: Google&#x3D;90, Pinterest&#x3D;500 |  |
| **call_to_action** | **String** | Meta only | [optional] |
| **link_url** | **String** |  | [optional] |
| **image_url** | **String** | Image URL (or video URL for TikTok) |  |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **interests** | **Array&lt;String&gt;** |  | [optional] |
| **end_date** | **Time** | Required for lifetime budgets | [optional] |
| **audience_id** | **String** | Custom audience ID for targeting | [optional] |
| **campaign_type** | **String** | Google only | [optional][default to &#39;display&#39;] |
| **keywords** | **Array&lt;String&gt;** | Google Search only | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateStandaloneAdRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  goal: null,
  budget_amount: null,
  budget_type: null,
  currency: null,
  headline: null,
  body: null,
  call_to_action: null,
  link_url: null,
  image_url: null,
  countries: null,
  age_min: null,
  age_max: null,
  interests: null,
  end_date: null,
  audience_id: null,
  campaign_type: null,
  keywords: null
)
```

