# 🔧 MÔ PHỎNG VÀ ĐIỀU KHIỂN VỊ TRÍ – VẬN TỐC ĐỘNG CƠ DC BẰNG MATLAB/SIMULINK  
**DC Motor Position and Speed Control using MATLAB/Simulink**

---

## 🇻🇳 GIỚI THIỆU (TIẾNG VIỆT)

Dự án này trình bày quá trình **mô hình hóa**, **thiết kế điều khiển PID**, và **mô phỏng hệ thống truyền động sử dụng động cơ điện một chiều (DC)** trong môi trường MATLAB/Simulink. Mục tiêu là xây dựng một hệ thống điều khiển vòng kín có thể điều chỉnh chính xác **tốc độ quay** và **vị trí góc** của trục động cơ.

Mô hình được xây dựng từ hàm truyền của động cơ, sử dụng các thông số thực tế của động cơ DC 3.70kW – 240V – 1750rpm. Hai chế độ điều khiển được mô phỏng:
- Điều khiển vị trí
- Điều khiển vận tốc

---

## 📁 CÁC TỆP TRONG DỰ ÁN

- `DC_transfer_fnc.m` – Script MATLAB định nghĩa hàm truyền của động cơ DC.
- `DC_sim.slx` – Mô hình Simulink gồm:
  - PID điều khiển vị trí
  - PID điều khiển vận tốc

---

## ⚙️ THÔNG SỐ ĐỘNG CƠ

```matlab
Ra = 11.4;        % Điện trở phần ứng (Ohm)
La = 0.1214;      % Tự cảm phần ứng (H)
Jm = 0.02215;     % Mô-men quán tính (kg·m^2)
Dm = 0.002953;    % Hệ số ma sát nhớt (N·m·s)
Kt = 1.28;        % Hằng số mô-men (N·m/A)
Kb = 0.0045;      % Hằng số suất điện động ngược (V·s/rad)

G = tf(Kt,[La*Jm, (Ra*Jm + La*Dm), (Ra*Dm + Kb*Kt), 0]);


# DC Motor Position and Speed Control using MATLAB/Simulink

This project demonstrates the modeling, simulation, and control of a DC motor's position and speed using MATLAB and Simulink. The system includes transfer function modeling, PID controller design, and closed-loop simulation.

---

## 📁 Files Included

- **`DC_transfer_fnc.m`**  
  MATLAB script to define the transfer function of the DC motor using physical parameters from a real 3.70kW, 240V, 1750rpm DC motor.

- **`DC_sim.slx`**  
  Simulink model that implements two closed-loop control structures:
  - Position control using PID.
  - Velocity control using PID.
  
  The model includes scopes to visualize system responses and error signals in real time.

---

## ⚙️ DC Motor Parameters

The parameters used are derived from a real DC motor:

```matlab
% DC Motor Parameters
Ra = 11.4;        % Armature resistance (Ohm)
La = 0.1214;      % Armature inductance (H)
Jm = 0.02215;     % Moment of inertia (kg·m^2)
Dm = 0.002953;    % Viscous friction coefficient (N·m·s)
Kt = 1.28;        % Torque constant (N·m/A)
Kb = 0.0045;      % Back EMF constant (V·s/rad)

% Transfer function
G = tf(Kt,[La*Jm, (Ra*Jm + La*Dm), (Ra*Dm + Kb*Kt), 0]);
