# Zernio::CreateCtwaAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Facebook or Instagram SocialAccount ID. |  |
| **ad_account_id** | **String** | Meta ad account ID, e.g. &#x60;act_123456789&#x60;. |  |
| **name** | **String** | Ad display name. Used to derive campaign / ad set names. |  |
| **headline** | **String** |  |  |
| **body** | **String** | Primary text shown above the image / video. |  |
| **image_url** | **String** | Image asset for image creatives. Mutually exclusive with &#x60;video&#x60;. Required if &#x60;video&#x60; is not supplied.  | [optional] |
| **video** | [**CreateCtwaAdRequestVideo**](CreateCtwaAdRequestVideo.md) |  | [optional] |
| **budget_amount** | **Float** | Budget amount in the ad account&#39;s currency major units (e.g. dollars for USD, not cents). Must be positive.  |  |
| **budget_type** | **String** |  |  |
| **currency** | **String** | ISO 4217 currency code matching the ad account&#39;s currency (e.g. &#x60;USD&#x60;). Optional — Meta infers from the ad account when omitted.  | [optional] |
| **end_date** | **Time** | ISO 8601 datetime. Required when &#x60;budgetType&#x60; is &#x60;lifetime&#x60;.  | [optional] |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes. Defaults to &#x60;[\&quot;US\&quot;]&#x60;. | [optional] |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **interests** | [**Array&lt;CreateCtwaAdRequestInterestsInner&gt;**](CreateCtwaAdRequestInterestsInner.md) |  | [optional] |
| **audience_id** | **String** | Custom audience ID to target. | [optional] |
| **advantage_audience** | **Integer** | Meta&#39;s Advantage+ audience expansion. &#x60;0&#x60; (default) keeps targeting strict; &#x60;1&#x60; lets Meta expand beyond the supplied targeting when its delivery system finds better matches. Always sent on CREATE (Meta requires it).  | [optional] |
| **objective** | **String** | Defaults to &#x60;OUTCOME_ENGAGEMENT&#x60; (the broadly-supported CTWA objective). &#x60;OUTCOME_SALES&#x60; and &#x60;OUTCOME_LEADS&#x60; require additional account configuration (Dataset linked to the WABA for sales) and may be rejected by Meta if missing.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCtwaAdRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  headline: null,
  body: null,
  image_url: null,
  video: null,
  budget_amount: null,
  budget_type: null,
  currency: null,
  end_date: null,
  countries: null,
  age_min: null,
  age_max: null,
  interests: null,
  audience_id: null,
  advantage_audience: null,
  objective: null
)
```

