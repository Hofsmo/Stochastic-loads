within StochasticLoads;
model wiener_band_load
  extends OpenIPSL.Electrical.Loads.PSAT.BaseClasses.baseLoad;
  inner Modelica.Blocks.Noise.GlobalSeed globalSeed annotation(Placement(visible = true, transformation(origin = {34, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.BandLimitedWhiteNoise Noise1 annotation(Placement(visible = true, transformation(origin = {38, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

initial equation
  P = P_0/S_b;
equation
  der(P) = Noise1.y;
  Q = Q_0 / S_b;
  annotation ();
end wiener_band_load;
