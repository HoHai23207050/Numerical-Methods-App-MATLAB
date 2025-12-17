# NUMERICAL METHODS APPLICATION – MATLAB APP DESIGNER

📊 **Preliminary Assignment Submission**

---

## 🚀 Project Setup & Usage

### How to install and run the application:

1. Open **MATLAB**
2. Clone or download the project source code from GitHub
3. Open the main **`.mlapp`** file (for example:

   * `Tab1.mlapp`
4. Make sure all **`.m` function files** are in the same directory or added to MATLAB path
5. Click **Run** in MATLAB App Designer
6. Enter input values and choose the numerical method you want to use

---

## 🎥 Demo

* Demo is included in report / PDF submission
* Screenshots and explanations are provided in each tab of the application

---

## 💻 Project Introduction

### a. Overview

This project is a **MATLAB App Designer application** developed to support learning and practicing **Numerical Methods**.
The application uses a **multi-tab interface**, where each tab represents a different numerical method topic.

All numerical algorithms are implemented as **independent MATLAB function files**, ensuring modularity, readability, and easy maintenance.

The goal of the application is to:

* Help students understand numerical methods intuitively
* Reduce manual calculation errors
* Visualize numerical results clearly

---

### b. Key Features & Function Manual

#### 🔹 Root Finding

* Bisection Method
* Simple Iteration Method
* Newton–Raphson Method
* Function plotting and root visualization

#### 🔹 Interpolation

* Newton Interpolation
* Lagrange Interpolation
* Predicting function values at given points

#### 🔹 Regression

* Linear Regression
* Exponential Regression
* Natural Exponential Regression (base *e*)
* Regression curve plotting

#### 🔹 Differentiation

* Numerical differentiation from discrete data *(x, y)*
* Differentiation from a given function
* Supported methods:

  * Forward Difference
  * Backward Difference
  * Central Difference

#### 🔹 Integration

* Trapezoidal Rule (from data points)
* Trapezoidal Rule (from function)
* Simpson’s 1/3 Rule
* Simpson’s 3/8 Rule

#### 🔹 Team Introduction

* Team member information

---

### c. Unique Features (What makes this app special?)

* All numerical methods are **clearly separated by tabs**
* Algorithms are implemented in **independent `.m` files**
* Supports both **function-based input** and **data-based input**
* Visual plots help users better understand numerical behavior
* User-friendly interface designed with **MATLAB App Designer**

---

### d. Technology Stack & Implementation

#### Platform

* **MATLAB**
* **MATLAB App Designer**

#### Implementation Methods

* Numerical algorithms written as separate MATLAB functions
* App Designer UI components connected to algorithm functions
* Graph plotting using MATLAB built-in visualization tools

---

### e. Service Architecture & File Structure

#### Architecture

* User Interface (MATLAB App Designer)
* Numerical Method Functions (`.m` files)
* Visualization Module (MATLAB plotting)

#### Main Function Files

* `bisectionMethod.m` – Bisection root finding
* `simpleIterationMethod.m` – Simple iteration
* `newtonRaphsonMethod.m` – Newton–Raphson method
* `NoiSuyNewton.m` – Newton interpolation
* `NoiSuyLagrange.m` – Lagrange interpolation
* `HoiQuyTuyenTinh.m` – Linear regression
* `hoiquylogarit.m` – Exponential regression
* `tinh_newton_tien.m` – Forward difference
* `tinh_newton_lui.m` – Backward difference
* `tinh_trung_tam.m` – Central difference
* `TichPhanHinhThang.m` – Trapezoidal rule
* `TichPhanSimpson13.m` – Simpson’s 1/3 rule
* `TichPhanSimpson38.m` – Simpson’s 3/8 rule

---

## 👥 Team Members

* **Nguyễn Văn Phúc** – 23207096
* **Hồ Trọng Hải** – 23207050
* **Nguyễn Trần Quốc Bảo** – 23207038
* **Nguyễn Khánh Hoàng** – 23207057
* **Nguyễn Đức Sơn** – 23207100

---

## ⚠️ Limitations

* Input validation is still limited
* Convergence conditions are not fully checked for all methods
* UI is not optimized for small screen resolutions

---

## 🔮 Future Improvements

* Improve input validation and error handling
* Add more numerical methods
* Enhance visualization and UI design
* Optimize performance for larger datasets

---

## 🔗 GitHub Repository

This repository is used for:

* Code management
* Version control
* Team collaboration
