# Zernio::TrackingSiteInstall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | How the tag is installed. &#x60;snippet&#x60; means you paste it. | [optional] |
| **store_account_id** | **String** |  | [optional] |
| **snippet** | **String** | The script tag to paste, already pointing at the custom subdomain once it is active. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingSiteInstall.new(
  method: null,
  store_account_id: null,
  snippet: null
)
```

