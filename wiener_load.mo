model wiener_load
  extends OpenIPSL.Electrical.Loads.PSAT.BaseClasses.baseLoad;
  inner Modelica.Blocks.Noise.GlobalSeed globalSeed annotation(Placement(visible = true, transformation(origin = {62, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.NormalNoise Noise1(samplePeriod = 0.01, sigma = 0.05) annotation(Placement(visible = true, transformation(origin = {10, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
initial equation
  P = P_0/S_b;
equation
  der(P) = Noise1.y;
  Q = Q_0 / S_b;
  annotation(uses(Modelica(version = "3.2.2")));
end wiener_load;
