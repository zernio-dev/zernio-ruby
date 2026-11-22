# Zernio::GetCampaignDraft200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft** | [**CampaignDraft**](CampaignDraft.md) |  |  |
| **versions** | [**Array&lt;CampaignDraft&gt;**](CampaignDraft.md) | Every version of the chain, newest first. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignDraft200Response.new(
  draft: null,
  versions: null
)
```

