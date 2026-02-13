# 🏭 IIoT Predictive Maintenance & Asset Reliability Console

## 📌 Project Overview
This project simulates an End-to-End Industrial IoT (IIoT) pipeline designed to predict engine failures before they occur. Using a dataset of over 100,000 sensor readings, I built a system that ingests raw telemetry data, processes it for degradation signals, and visualizes actionable insights for maintenance teams.

## 🛠️ Tech Stack
* **Python (Pandas/Matplotlib):** Rolling mean signal smoothing, "Knee Point" detection algorithms, and RUL (Remaining Useful Life) calculation.
* **Tableau:** Interactive "Fleet Health" dashboard for visualizing thermal and vibration anomalies.
* **Data Engineering:** Processed 100,000+ rows of raw sensor logs to flag "Red Zone" assets.

## 📊 Key Results
* **Early Detection:** Identified mechanical degradation signals (Thermal/Vibration) prior to failure.
* **Scalability:** Engineered a reusable pipeline for processing raw sensor streams.
* **Operational Value:** Created a "Command Center" view to prioritize maintenance work orders.

## 📂 File Structure
* `maintenance_analysis.py` - The Python script for signal processing and degradation detection.
* `fleet_health_dashboard_data.csv` - The processed dataset used for the visualization.
* `dashboard_screenshot.jpg` - A view of the Executive Fleet Console.

---
*Built as a portfolio project to demonstrate Full-Stack Data Engineering & Reliability capabilities.*
