# Rails Subscription Billing

A Rails-style subscription invoice model that calculates prorated billing totals in integer cents.

## Stack

Ruby, Rails-style domain model, subscription billing

## Problem

Subscription billing systems need deterministic proration behavior that can be tested independently from controllers and jobs.

## Architecture

- SubscriptionInvoice stores monthly price, active days, and cycle length.
- Proration is calculated in cents.
- The spec runs as a plain Ruby executable.

## Implemented Production Readiness

- CI runs the Ruby spec.
- Money is represented in integer cents.
- Proration caps active days to the billing cycle length.

## Run And Test

```powershell
ruby spec\subscription_invoice_spec.rb
```

## Quality Gates

- Project-specific GitHub Actions workflow included under .github/workflows/ci.yml.
- Generated build outputs and dependency folders are excluded through .gitignore.
- Tests and validation commands are intentionally small enough to run during code review.

## Production Extension Points

- Add ActiveRecord persistence.
- Add Sidekiq retry jobs.
- Add dunning workflow email events.

## Repository Hygiene

This repository contains original portfolio code only. It does not include employer source code, private resumes, generated binaries, local credentials, or large media files.

