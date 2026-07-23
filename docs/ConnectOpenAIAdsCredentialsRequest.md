# Zernio::ConnectOpenAIAdsCredentialsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | API key from ChatGPT Ads Manager (Settings). Grants full read/write access on OpenAI&#39;s side; Zernio only ever reads with it. |  |
| **profile_id** | **String** | Your Zernio profile ID |  |
| **state** | **String** | Optional state passthrough for the connect flow. | [optional] |
| **redirect_uri** | **String** | Optional URL to redirect to after successful connection | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectOpenAIAdsCredentialsRequest.new(
  api_key: null,
  profile_id: null,
  state: null,
  redirect_uri: null
)
```

