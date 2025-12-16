# NUMERICAL METHODS APPLICATION – MATLAB APP DESIGNER

## 1. Introduction
This project is a **MATLAB App Designer application** developed to solve problems in the **Numerical Methods** course.  
The application is designed using a **multi-tab interface**, where each tab represents a specific numerical method topic.  
All numerical algorithms are implemented in **separate MATLAB functions** and integrated into the App.

## 2. Team Members
- Member 1: Hồ Trọng Hải
- Member 2: 
- Member 3: 
- Member 4: 
- Member 5: 

## 3. Technologies Used
- MATLAB
- MATLAB App Designer
- GitHub (for version control and team collaboration)

## 4. Application Structure
The application consists of the following main tabs:

### 🔹 Root Finding Tab
- Bisection Method
- Simple Iteration Method
- Newton–Raphson Method
- Plotting the function and root visualization

### 🔹 Interpolation Tab
- Newton Interpolation
- Lagrange Interpolation
- Value prediction at a given point

### 🔹 Regression Tab
- Linear Regression
- Exponential Regression
- Natural Exponential Regression (base *e*)
- Regression curve plotting

### 🔹 Differentiation Tab
- Numerical differentiation from discrete data *(x, y)*
- Differentiation from a given function
- Supported methods:
  - Forward Difference
  - Backward Difference
  - Central Difference

### 🔹 Integration Tab
- Trapezoidal Rule (from data points)
- Trapezoidal Rule (from function input)
- Simpson’s 1/3 Rule
- Simpson’s 3/8 Rule

### 🔹 Team Introduction Tab
- Team information
- Task assignment and contribution

## 5. Main Function Files
- `bisectionMethod.m` – Bisection method for root finding
- `simpleIterationMethod.m` – Simple iteration method
- `newtonRaphsonMethod.m` – Newton–Raphson method
- `NoiSuyNewton.m` – Newton interpolation
- `NoiSuyLagrange.m` – Lagrange interpolation
- `HoiQuyTuyenTinh.m` – Linear regression
- `hoiquylogarit.m` – Exponential regression
- `tinh_newton_tien.m` – Forward difference approximation
- `tinh_newton_lui.m` – Backward difference approximation
- `tinh_trung_tam.m` – Central difference approximation
- `TichPhanHinhThang.m` – Trapezoidal integration
- `TichPhanSimpson13.m` – Simpson’s 1/3 rule
- `TichPhanSimpson38.m` – Simpson’s 3/8 rule

## 6. How to Run the Application
1. Open MATLAB
2. Open the main `.mlapp` file (e.g. `Tab1.mlapp` or `TimNghiem.mlapp`)
3. Click **Run**
4. Enter input data and select the desired numerical method

## 7. Limitations
- Limited validation for incorrect user inputs
- The interface has not been fully optimized for small screen resolutions
- Convergence conditions are not automatically checked in all methods

## 8. Future Improvements
- Improve input validation and error handling
- Add more numerical methods
- Enhance user interface and visualization

## 9. GitHub Repository
This repository is used for **code management, version control, and team collaboration**.
