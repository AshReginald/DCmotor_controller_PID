# Mô phỏng và Điều khiển Vị trí – Vận tốc Động cơ DC bằng MATLAB/Simulink  
**(DC Motor Position and Speed Control using MATLAB/Simulink)**

---

Dự án này trình bày quá trình **mô hình hóa**, **thiết kế bộ điều khiển PID**, và **mô phỏng hệ thống truyền động sử dụng động cơ điện một chiều (DC)** trong môi trường MATLAB/Simulink. Mục tiêu là xây dựng một hệ thống điều khiển vòng kín có thể điều chỉnh chính xác **tốc độ quay** và **vị trí góc** của trục động cơ.

Mô hình được xây dựng từ hàm truyền tuyến tính hóa của động cơ, dựa trên các thông số thực tế của một động cơ DC 3.70kW – 240V – 1750rpm. Sau đó, hệ thống được điều khiển bằng bộ PID trong hai chế độ riêng biệt:  
- **Điều khiển vị trí**  
- **Điều khiển vận tốc**

---

### 📁 Các tệp trong dự án

- `DC_transfer_fnc.m` – Script MATLAB để tạo hàm truyền của động cơ DC.
- `DC_sim.slx` – File Simulink chứa hai mô hình điều khiển vòng kín:
  - PID điều khiển vị trí
  - PID điều khiển vận tốc

---

### ⚙️ Thông số kỹ thuật của động cơ

```matlab
% DC Motor Parameters
Ra = 11.4;        % Điện trở phần ứng (Ohm)
La = 0.1214;      % Tự cảm phần ứng (H)
Jm = 0.02215;     % Mô-men quán tính (kg·m^2)
Dm = 0.002953;    % Hệ số ma sát nhớt (N·m·s)
Kt = 1.28;        % Hằng số mô-men (N·m/A)
Kb = 0.0045;      % Hằng số suất điện động ngược (V·s/rad)

% Hàm truyền của động cơ DC (đầu vào là điện áp, đầu ra là vị trí góc)
G = tf(Kt,[La*Jm, (Ra*Jm + La*Dm), (Ra*Dm + Kb*Kt), 0]);
