{
    "class": "AS3",
    "action": "deploy",
    "persist": true,
    "declaration": {
        "class": "ADC",
        "schemaVersion": "3.0.0",
        "id": "example-declaration-01",
        "label": "${TENANT}",
        "remark": "Simple HTTP application with round robin pool",
        "${TENANT}": {
            "class": "Tenant",
            "defaultRouteDomain": 0,
            "${APPLICATION}": {
                "class": "Application",
                "template": "http",
            "serviceMain": {
                "class": "Service_HTTP",
                "virtualAddresses": [
                    "${VIP_ADDRESS}"
                ],
                "pool": "web_pool"
                },
                "web_pool": {
                    "class": "Pool",
                    "monitors": [
                        "http"
                    ],
                    "members": [
                        {
                            "servicePort": 80,
                            "serverAddresses": [
                                "${SERVER1}",
                                "${SERVER2}"
                            ]
                        }
                    ]
                }
            }
        }
    }
}