# OpenAPI to Mermaid

Powershell script that generates Mermaid diagrams from OpenApi documents

## Usage

Prerequsites:

-   .Net 7 SDK or later

Usage:

-   Clone the repo
-   Copy the OpenAPI json or yaml documents to the same directory as the script
-   Run the script

## Example

The following OpenAPI document:

```yaml
openapi: 3.0.0
info:
    title: Sample OpenApi
    version: 1.0.0
paths:
    /api/editresource:
        get:
            responses:
                "200":
                    description: OK
        patch:
            responses:
                "200":
                    description: OK
    /api/viewresource:
        get:
            responses:
                "200":
                    description: OK
```

Will generate the following Mermaid diagram:

```mermaid
graph LR
classDef GET fill:lightSteelBlue,stroke:#333,stroke-width:2px
classDef POST fill:Lightcoral,stroke:#333,stroke-width:2px
classDef GET_POST fill:forestGreen,stroke:#333,stroke-width:2px
classDef DELETE_GET_PATCH fill:yellowGreen,stroke:#333,stroke-width:2px
classDef DELETE_GET_PATCH_PUT fill:oliveDrab,stroke:#333,stroke-width:2px
classDef DELETE_GET_PUT fill:olive,stroke:#333,stroke-width:2px
classDef DELETE_GET fill:DarkSeaGreen,stroke:#333,stroke-width:2px
classDef DELETE fill:Tomato,stroke:#333,stroke-width:2px
classDef OTHER fill:White,stroke:#333,stroke-width:2px
/["/"] --> /api["api"]
/api["api"] --> /api/editresource["editresource"]
class /api/editresource GET_PATCH
/api["api"] --> /api/viewresource["viewresource"]
class /api/viewresource GET
class /api OTHER
class / OTHER
```
