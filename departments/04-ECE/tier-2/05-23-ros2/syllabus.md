---
title: "Track 23: ROS2"
institution: MR ROKESH TECHNOLOGY
version: 1.0
date: June 2026
---

<div class="institution-header">

# Track 23: ROS2 (Robot Operating System 2)

**MR ROKESH TECHNOLOGY — Training & Internship Programs**

</div>

> **Skill path:** Linux → ROS2 Concepts → Nodes → Topics → Services → Navigation → Simulation → Real Robot

**Related:** [Track 19 — Robotics & IoT](19-robotics-iot.md) | [Track 24 — Drone Programming](24-drone-programming.md)

---

## Track Overview

**Who this is for:** Robotics engineers, ME/ECE students, and developers building autonomous robot software.

**Prerequisites:** Python or C++; Linux basics; [Arduino](22-arduino.md) or [Embedded Systems](20-embedded-systems.md) helpful.

**Tools:** ROS2 Humble/Iron, Gazebo/Ignition, RViz2, TurtleBot3 (sim or hardware), Ubuntu 22.04, colcon.

---

## Outcomes by Duration

| Duration | Hours | Job Readiness | Key Deliverables |
|----------|-------|---------------|------------------|
| **2 Weeks** | 40–50 | ROS2 awareness | Publisher/subscriber nodes |
| **1 Month** | 80–100 | Junior ROS developer | Simulated robot control |
| **3 Months** | 250–300 | Internship-ready | Navigation stack capstone |
| **6 Months** | 500–600 | Robotics engineer entry | Autonomous mobile robot |
| **9 Months** | 750–900 | Advanced robotics | Multi-robot coordination system |

---

<div class="duration-section"></div>

## 2-Week Crash Course

| Days | Topics | Deliverable |
|------|--------|-------------|
| D1–2 | ROS2 architecture, workspace, colcon build | Working ROS2 workspace |
| D3–4 | Nodes, topics, publishers/subscribers (Python) | Talker/listener nodes |
| D5–6 | Services, parameters, launch files | Parameterized launch system |
| D7–8 | RViz2, TF2 transforms | Visualized robot model |
| D9–10 | Gazebo simulation intro | **Simulated robot moving in Gazebo** |

---

## 1-Month Foundation

| Week | Topics | Project |
|------|--------|---------|
| W1 | ROS2 CLI, rclpy, package structure | Custom message package |
| W2 | URDF, robot description, RViz2 | Custom robot model |
| W3 | Gazebo plugins, sensor simulation | Simulated LIDAR robot |
| W4 | Basic navigation (Nav2 intro) | **Point-to-point navigation in sim** |

---

## 3-Month Job Ready

| Month | Topics | Projects |
|-------|--------|----------|
| M1 | ROS2 core, Python/C++ nodes, launch | Package suite (3 nodes) |
| M2 | SLAM (Cartographer/SLAM Toolbox), mapping | Generated map of environment |
| M3 | Nav2 stack, costmaps, capstone | **Autonomous navigation capstone** |

---

## 6-Month Professional

| Month | Topics | Projects |
|-------|--------|----------|
| M1–M3 | As 3-month track | — |
| M4 | Manipulation intro (MoveIt2 overview) | Pick-and-place sim |
| M5 | Real robot integration (TurtleBot or custom) | Hardware deployment |
| M6 | Capstone | **Autonomous mobile robot (sim + hardware)** |

---

## 9-Month Advanced

**Capstones:** Multi-robot fleet coordination + manipulation-capable robot system | **Level:** L5

---

## Assessment Rubric

| Component | Weight | Criteria |
|-----------|--------|----------|
| Weekly Quiz | 20% | ROS2 concepts, CLI, architecture |
| Lab Completion | 40% | Nodes run; sim launches cleanly |
| Project | 30% | Navigation accuracy, code structure |
| Portfolio | 10% | GitHub repos, bag files, demo videos |

---

## Appendix: Mentor Notes

**Use Ubuntu natively or VM with GPU passthrough for Gazebo.** TurtleBot3 simulation sufficient for 1–3 month tiers; hardware optional for 6-month+.
