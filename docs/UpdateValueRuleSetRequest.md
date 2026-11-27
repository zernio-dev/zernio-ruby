# Zernio::UpdateValueRuleSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant); its platform decides where the campaign is created. |  |
| **name** | **String** | Required: the update replaces the whole set. |  |
| **rules** | [**Array&lt;ValueRule&gt;**](ValueRule.md) | The COMPLETE rule list. Omitting a rule deletes it on Meta. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateValueRuleSetRequest.new(
  stage: null,
  account_id: null,
  name: null,
  rules: null
)
```

