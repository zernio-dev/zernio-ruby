# Zernio::CreateStandaloneAd200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **reason** | **String** | Explanation for the node&#39;s result:  - On skipped: why the node could not be validated. - On unverified: why Meta could not dry-run it although the other nodes passed. - On validated: what the dry run could not check, and what the request would do as sent. For example, a Performance Max validation with no location targeting reports here that the campaign would run worldwide. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAd200ResponseResultsInner.new(
  node: null,
  status: null,
  reason: null
)
```

