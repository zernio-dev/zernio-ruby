# Zernio::ConnectOpenAIAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | API key from ChatGPT Ads Manager (Settings). Grants full read/write access on OpenAI&#39;s side; Zernio only ever reads with it. |  |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_url** | **String** | Optional URL to redirect to after successful connection, echoed back as redirectUrl. | [optional] |
| **redirect_uri** | **String** | Alias of redirect_url, kept for existing callers | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectOpenAIAdsCredentialsRequest.new(
  api_key: null,
  profile_id: null,
  state: null,
  redirect_url: null,
  redirect_uri: null
)
```

