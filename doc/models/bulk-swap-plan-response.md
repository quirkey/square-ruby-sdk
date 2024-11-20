
# Bulk Swap Plan Response

Defines output parameters in a response of the
[BulkSwapPlan](../../doc/api/subscriptions.md#bulk-swap-plan) endpoint.

## Structure

`Bulk Swap Plan Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Errors encountered during the request. |
| `affected_subscriptions` | `Integer` | Optional | The number of affected subscriptions. |

## Example (as JSON)

```json
{
  "affected_subscriptions": 12,
  "errors": [
    {
      "category": "MERCHANT_SUBSCRIPTION_ERROR",
      "code": "INVALID_EXPIRATION",
      "detail": "detail6",
      "field": "field4"
    },
    {
      "category": "MERCHANT_SUBSCRIPTION_ERROR",
      "code": "INVALID_EXPIRATION",
      "detail": "detail6",
      "field": "field4"
    }
  ]
}
```

