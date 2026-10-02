# Required Tags

## Purpose

Ensure that all Azure resources deployed within the landing zone contain
the minimum metadata required for governance, ownership and lifecycle
management.

## Required Tags

| Tag | Purpose | Example |
|---|---|---|
| `environment` | Identifies the deployment environment | `dev` |
| `project` | Identifies the workload or project | `strength-forge` |
| `managed-by` | Identifies how the resource is managed | `terraform` |

## Enforcement

Mode:

`Deny`

Resources that do not contain all required tags will be rejected.

## Scope

The policies will be assigned at subscription scope.

## Responsibility

Workloads are responsible for providing:

- `environment`
- `project`

The platform is responsible for ensuring:

- `managed-by`

The exact implementation of this responsibility will be defined in the
Terraform workload modules and platform contract.
