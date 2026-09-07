# Zernio::CreateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id owning the Google Ads connection. |  |
| **platform** | **String** | Only \&quot;google\&quot; is implemented today; every other value returns 501. |  |
| **campaign_id** | **String** | Google platform campaign ID (numeric) the ad group is created under. |  |
| **name** | **String** |  |  |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **customer_id** | **String** | Numeric Google Ads customer id. Only required when the connection has more than one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdSetRequest.new(
  account_id: null,
  platform: null,
  campaign_id: null,
  name: null,
  status: null,
  customer_id: null
)
```

