# Tiếng Việt 
# Mô phỏng và Điều khiển Vị trí – Vận tốc Động cơ DC bằng MATLAB/Simulink

Dự án này trình bày quá trình **mô hình hóa**, **thiết kế điều khiển** và **mô phỏng hệ thống truyền động dùng động cơ điện một chiều (DC)** trong môi trường MATLAB/Simulink. Mô hình bao gồm xây dựng hàm truyền, thiết kế bộ điều khiển PID và kiểm tra hệ thống trong hai chế độ: điều khiển vị trí và điều khiển vận tốc.

---

## 📁 Tệp trong dự án

- **`DC_transfer_fnc.m`**  
  File script MATLAB để tạo hàm truyền động cơ DC dựa trên các thông số kỹ thuật thực tế.

- **`DC_sim.slx`**  
  File mô phỏng Simulink, bao gồm:
  - Mô hình điều khiển vị trí sử dụng PID vòng kín.
  - Mô hình điều khiển vận tốc sử dụng PID vòng kín.

---

## ⚙️ Thông số động cơ DC

Sử dụng thông số từ động cơ 3.70kW, 240V, 1750 vòng/phút:

```matlab
Ra = 11.4;        % Điện trở phần ứng (Ohm)
La = 0.1214;      % Độ tự cảm phần ứng (H)
Jm = 0.02215;     % Mô-men quán tính (kg·m^2)
Dm = 0.002953;    % Hệ số ma sát nhớt (N·m·s)
Kt = 1.28;        % Hằng số mô-men (N·m/A)
Kb = 0.0045;      % Hằng số suất điện động ngược (V·s/rad)

% Hàm truyền từ điện áp đầu vào đến vị trí góc
G = tf(Kt,[La*Jm, (Ra*Jm + La*Dm), (Ra*Dm + Kb*Kt), 0]);



# English
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
