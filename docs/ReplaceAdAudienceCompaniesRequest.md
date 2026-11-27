# Zernio::ReplaceAdAudienceCompaniesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **companies** | [**Array&lt;ReplaceAdAudienceCompaniesRequestCompaniesInner&gt;**](ReplaceAdAudienceCompaniesRequestCompaniesInner.md) | The complete company list. Each row needs at least one of name, domain, website or linkedinPageUrl. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceAdAudienceCompaniesRequest.new(
  stage: null,
  companies: null
)
```

