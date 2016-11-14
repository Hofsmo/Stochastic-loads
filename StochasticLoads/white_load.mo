within StochasticLoads;
model white_load
  extends OpenIPSL.Electrical.Loads.PSAT.BaseClasses.baseLoad;
  inner Modelica.Blocks.Noise.GlobalSeed globalSeed annotation(Placement(visible = true, transformation(origin = {88, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.NormalNoise Noise1(samplePeriod = 0.05, sigma = 0.01, mu = P_0) annotation(Placement(visible = true, transformation(origin = {48, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  P = Noise1.y;
  Q = Q_0 / S_b;
  annotation ();
end white_load;
