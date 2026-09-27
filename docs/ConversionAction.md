# Zernio::ConversionAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Google Ads conversion action id. |  |
| **name** | **String** |  |  |
| **type** | **String** | Google&#39;s ConversionActionType, e.g. WEBPAGE, UPLOAD_CLICKS. |  |
| **status** | **String** | Google&#39;s ConversionActionStatus, e.g. ENABLED, REMOVED, HIDDEN. |  |
| **category** | **String** | Google&#39;s ConversionActionCategory, e.g. DEFAULT, PURCHASE, LEAD. |  |
| **origin** | **String** | Google&#39;s ConversionOrigin, e.g. WEBSITE, APP. Together with category it names the goal the action belongs to (see GET /v1/ads/conversions/goals). | [optional] |
| **primary_for_goal** | **Boolean** | true &#x3D; primary (counts toward bidding when its goal is biddable), false &#x3D; secondary. Change it with PATCH /v1/ads/conversions/actions/{actionId}. | [optional] |
| **tag_snippets** | [**Array&lt;ConversionActionTagSnippetsInner&gt;**](ConversionActionTagSnippetsInner.md) | The code a customer pastes onto their site. Present for types Google generates a snippet for (e.g. WEBPAGE); empty otherwise.  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAction.new(
  id: null,
  name: null,
  type: null,
  status: null,
  category: null,
  origin: null,
  primary_for_goal: null,
  tag_snippets: null
)
```

