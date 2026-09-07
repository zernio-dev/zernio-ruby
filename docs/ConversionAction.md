# Zernio::ConversionAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Google Ads conversion action id. |  |
| **name** | **String** |  |  |
| **type** | **String** | Google&#39;s ConversionActionType, e.g. WEBPAGE, UPLOAD_CLICKS. |  |
| **status** | **String** | Google&#39;s ConversionActionStatus, e.g. ENABLED, REMOVED, HIDDEN. |  |
| **category** | **String** | Google&#39;s ConversionActionCategory, e.g. DEFAULT, PURCHASE, LEAD. |  |
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
  tag_snippets: null
)
```

