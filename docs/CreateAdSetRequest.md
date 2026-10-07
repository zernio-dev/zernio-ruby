# Zernio::CreateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id owning the Google Ads connection. |  |
| **platform** | **String** | Only \&quot;google\&quot; is implemented today; every other value returns 501. |  |
| **campaign_id** | **String** | Google platform campaign ID (numeric) the ad group is created under. |  |
| **name** | **String** |  |  |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **max_cpc** | **Float** | Max CPC of the new ad group, in the account&#39;s currency units. Send it when the campaign uses Manual CPC: Google gives an ad group without one a 0.01 bid. | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Only required when the connection has more than one. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdSetRequest.new(
  account_id: null,
  platform: null,
  campaign_id: null,
  name: null,
  status: null,
  max_cpc: null,
  ad_account_id: null,
  customer_id: null
)
```

