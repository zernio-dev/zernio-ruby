# Zernio::CreateStandaloneAd200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **reason** | **String** | Why the node could not be validated (on skipped), why Meta could not dry-run it although the other nodes passed (on unverified), or what the dry run could not check and what the request would do as sent (on validated). A Performance Max validation with no location targeting reports here that the campaign would run worldwide. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAd200ResponseResultsInner.new(
  node: null,
  status: null,
  reason: null
)
```

