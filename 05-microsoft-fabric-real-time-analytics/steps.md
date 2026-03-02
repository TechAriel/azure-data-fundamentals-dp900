# Technical Breakdown

## Step 1 – Create Fabric Workspace

- Created new workspace
- Enabled Fabric capacity (Trial)
- Dedicated workspace for streaming lab isolation

Purpose:
Workspace acts as the governance boundary for eventstreams, eventhouses, and real-time assets.

---

## Step 2 – Create Eventstream

- Opened Real-Time Hub
- Connected to Yellow Taxi sample data source
- Renamed source to: taxi
- Renamed eventstream to: taxi-data
- Default stream: taxi-data-stream

Verified stream appeared on design canvas.

Engineering Insight:
Eventstream functions as a real-time ingestion pipeline, routing streaming events to downstream destinations.

---

## Step 3 – Create Eventhouse

- Created new Eventhouse
- Confirmed automatic creation of KQL database
- Opened associated queryset

Engineering Insight:
Eventhouse provides durable storage for streaming data and exposes it through a KQL database for high-performance querying.

---

## Step 4 – Configure Stream Destination (Table Creation)

- Selected Get Data → Existing Eventstream
- Connected to taxi-data eventstream
- Created new table: taxi
- Named connection: taxi-table

Verified destination appears in eventstream canvas.

Engineering Insight:
Linking Eventstream to Eventhouse enables continuous ingestion into a managed table optimized for time-series analytics.

---

## Step 5 – Query Real-Time Data Using KQL

### Query 1 – Ingestion Validation

Executed:
```
taxi
| take 100
```
Purpose:
Validate successful ingestion and inspect schema.

---

### Query 2 – Hourly Pickup Aggregation

Executed:
```
taxi
| summarize PickupCount = count() by bin(todatetime(tpep_pickup_datetime), 1h)
```
Result:
Pickup counts grouped into hourly time buckets.

Observed dynamic updates as new streaming data arrived.

Engineering Insight:
KQL enables fast aggregation of high-volume streaming datasets with time-based windowing functions.

---

## Step 6 – Review and Cleanup

- Verified active ingestion from eventstream to Eventhouse table
- Reviewed KQL database and queryset functionality
- Workspace removal recommended after lab completion to prevent ongoing capacity usage

