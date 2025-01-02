{
    "$schema": "http://json-schema.org/draft-06/schema#",
    "type": "array",
    "items": {
        "$ref": "#/definitions/VoteResponsesModelGetElement"
    },
    "definitions": {
        "VoteResponsesModelGetElement": {
            "type": "object",
            "additionalProperties": false,
            "properties": {
                "id": {
                    "type": "integer"
                },
                "image_id": {
                    "type": "string"
                },
                "sub_id": {
                    "anyOf": [
                        {
                            "type": "null"
                        },
                        {
                            "type": "string"
                        }
                    ]
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
                "value"
            ],
            "title": "VoteResponsesModelGetElement"
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
                        ".gif",
                        ".jpg",
                        ".png"
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
