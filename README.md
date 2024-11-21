# RC Circuit Simulation

This repository contains MATLAB scripts for simulating the voltage across the capacitor in a series RC circuit using different numerical methods and comparing them to the analytical solution. The circuit is analyzed for a constant input voltage \( v_{in} \), and several methods (Euler Forward, Euler Backward, Trapezoidal, and Analytical) are used to solve the governing differential equation.

---

## Problem Description

We analyze the behavior of a series RC circuit governed by the following differential equation:

\[
R C \frac{dv_0}{dt} + v_0 = v_{in}
\]

Where:
- \( v_0(t) \) is the voltage across the capacitor,
- \( v_{in}(t) \) is the input voltage (constant in this case),
- \( R \) is the resistance (Ohms),
- \( C \) is the capacitance (Farads).

The goal is to compare the results obtained from the analytical solution with those derived using numerical methods like Euler Forward, Euler Backward, and the Trapezoidal method.

---

## Methods

1. **Analytical Solution**  
   The analytical solution for a constant input voltage \( v_{in}(t) = V_{in} \) is derived from the first-order differential equation:

   \[
   v_0(t) = V_{in} \left(1 - e^{-t/(R C)}\right)
   \]

2. **Euler's Forward Method**  
   In this method, we approximate the voltage at the next time step using the equation:

   \[
   v_0(k+1) = v_0(k) + \frac{dt}{R C} \left(V_{in} - v_0(k)\right)
   \]

3. **Euler's Backward Method**  
   The backward Euler method is an implicit method, solving the equation using the next time step for voltage. The equation is:

   \[
   v_0(k+1) = v_0(k) + \frac{dt}{R C + dt} \left(V_{in} - v_0(k)\right)
   \]

4. **Trapezoidal Method**  
   The trapezoidal method is a more accurate numerical method that combines the Euler method and the backward Euler method:

   \[
   v_0(k+1) = v_0(k) + \frac{dt}{2} \left( f(k) + f(k+1) \right)
   \]

   Where \( f(k) \) represents the rate of change of the voltage at each step.

---

## Repository Contents

- **`euler_forward.m`**: Implements the Euler Forward method for solving the RC circuit.
- **`euler_backward.m`**: Implements the Euler Backward method using implicit solving with `fsolve`.
- **`trapezoidal.m`**: Implements the Trapezoidal method for solving the RC circuit.
- **`analytic_solution.m`**: Provides the analytical solution for the voltage across the capacitor.
- **`plot_results.m`**: Generates plots comparing the results from all methods (Analytical, Euler Forward, Euler Backward, and Trapezoidal).

---

## How to Run the Code

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/RC_Circuit_Simulation.git
