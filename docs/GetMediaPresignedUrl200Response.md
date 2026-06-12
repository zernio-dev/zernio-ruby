# Zernio::GetMediaPresignedUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_url** | **String** | Presigned URL to PUT your file to (expires in 1 hour) | [optional] |
| **public_url** | **String** | Public URL where the file will be accessible after upload | [optional] |
| **key** | **String** | Storage key/path of the file | [optional] |
| **expires_in** | **Integer** | Seconds until the presigned uploadUrl expires (always 3600) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetMediaPresignedUrl200Response.new(
  upload_url: null,
  public_url: null,
  key: null,
  expires_in: null
)
```

