# Technical Breakdown

## Step 1 – Provision Storage Account

- Created new resource group
- Deployed Storage Account
  - Performance: Standard
  - Redundancy: Locally Redundant Storage (LRS)
  - Soft delete disabled

Purpose:
The storage account acts as the governance and billing boundary for all storage services.

---

## Step 2 – Blob Storage (Flat Namespace)

- Created container: data
- Access level: Private
- Uploaded product1.json
- Created virtual folder via upload path

Observation:
Folders are virtual in flat namespace and exist only as blob name prefixes.

---

## Step 3 – Upgrade to Data Lake Gen2

- Enabled hierarchical namespace
- Uploaded product2.json
- Verified folder-level operations

Engineering Insight:
Hierarchical namespace enables directory semantics, ACLs, and compatibility with analytics engines.

---

## Step 4 – Azure Files

- Created file share: files
- Tier: Transaction optimized
- Reviewed OS mount scripts

Purpose:
Supports lift-and-shift and SMB-based workloads.

---

## Step 5 – Azure Tables

Created table: products

Inserted entities demonstrating:

- PartitionKey distribution
- RowKey uniqueness
- Flexible schema (added Boolean property)
- Automatic timestamp tracking
