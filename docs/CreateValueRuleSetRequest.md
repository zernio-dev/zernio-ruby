# Zernio::CreateValueRuleSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant); its platform decides where the campaign is created. |  |
| **ad_account_id** | **String** | Platform ad account id (Meta act_&lt;n&gt;, Google customer id, LinkedIn account id, ...). |  |
| **name** | **String** |  |  |
| **rules** | [**Array&lt;ValueRule&gt;**](ValueRule.md) | Evaluated in order; the first matching rule wins. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateValueRuleSetRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  name: null,
  rules: null
)
```

