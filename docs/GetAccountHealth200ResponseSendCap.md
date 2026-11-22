# Zernio::GetAccountHealth200ResponseSendCap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Today&#39;s cap: the base cap, doubled after 14 days of sending with no spam signal. | [optional] |
| **base_limit** | **Integer** | The cap before doubling. | [optional] |
| **doubled** | **Boolean** |  | [optional] |
| **doubles_at** | **Time** | When the cap doubles if the mailbox sends every day from now on and raises no spam signal. Null once doubled, with a manual limit, and on IMAP. | [optional] |
| **used** | **Integer** |  | [optional] |
| **resets_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200ResponseSendCap.new(
  limit: null,
  base_limit: null,
  doubled: null,
  doubles_at: null,
  used: null,
  resets_at: null
)
```

