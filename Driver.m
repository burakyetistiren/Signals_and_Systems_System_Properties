clc;
clear;

Linearity(@Syst_a, 1);
Time_invariance(@Syst_a, 1);
Causality(@Syst_a, 1);

Linearity(@Syst_b, 0);
Time_invariance(@Syst_b, 0);
Causality(@Syst_b, 0);

Linearity(@Syst_c, 0);
Time_invariance(@Syst_c, 0);
Causality(@Syst_c, 0);

Linearity(@Syst_d, 0);
Time_invariance(@Syst_d, 0);
Causality(@Syst_d, 0);

Linearity(@Syst_e, 0);
Time_invariance(@Syst_e, 0);
Causality(@Syst_e, 0);