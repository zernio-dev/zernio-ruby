# Zernio::InspectGoogleSearchConsoleUrlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio account ID of the Google Search Console connection. |  |
| **inspection_url** | **String** |  |  |
| **language_code** | **String** | Language of the issue messages (BCP-47, for example &#x60;en-US&#x60;). Defaults to English. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InspectGoogleSearchConsoleUrlRequest.new(
  account_id: null,
  inspection_url: https://acme.com/pricing,
  language_code: null
)
```

