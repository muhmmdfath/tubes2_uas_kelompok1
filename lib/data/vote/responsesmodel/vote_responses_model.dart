{
    "$schema": "http://json-schema.org/draft-06/schema#",
    "$ref": "#/definitions/VoteResponsesModelSearch",
    "definitions": {
        "VoteResponsesModelSearch": {
            "type": "object",
            "additionalProperties": false,
            "properties": {
                "id": {
                    "type": "integer"
                },
                "user_id": {
                    "type": "string",
                    "format": "integer"
                },
                "image_id": {
                    "type": "string"
                },
                "sub_id": {
                    "type": "null"
                },
                "created_at": {
                    "type": "string",
                    "format": "date-time"
                },
                "value": {
                    "type": "integer"
                },
                "country_code": {
                    "type": "null"
                },
                "image": {
                    "$ref": "#/definitions/Image"
                }
            },
            "required": [
                "country_code",
                "created_at",
                "id",
                "image",
                "image_id",
                "sub_id",
                "user_id",
                "value"
            ],
            "title": "VoteResponsesModelSearch"
        },
        "Image": {
            "type": "object",
            "additionalProperties": false,
            "properties": {
                "id": {
                    "type": "string"
                },
                "url": {
                    "type": "string",
                    "format": "uri",
                    "qt-uri-protocols": [
                        "https"
                    ],
                    "qt-uri-extensions": [
                        ".jpg"
                    ]
                }
            },
            "required": [
                "id",
                "url"
            ],
            "title": "Image"
        }
    }
}
