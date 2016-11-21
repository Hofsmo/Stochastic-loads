within NoiseInjections;
model WhiteNoiseInjection
// Parameters to be used by the nois generators
parameter Real active_mu = 0 "Expectation value active power noise";
parameter Real active_sigma = 0.01 "Standard deviation active power noise";
  
parameter Real samplePeriod = 0.02 "Sample period";
  
  OpenIPSL.Connectors.PwPin pin annotation(Placement(visible = true, transformation(origin = {-118, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.NormalNoise active(mu = active_mu, samplePeriod = samplePeriod, sigma = active_sigma)  annotation(Placement(visible = true, transformation(origin = {20, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
equation
  pin.ir*pin.vr = active.y;
  pin.ii*pin.vi = 0;
  annotation(uses(OpenIPSL(version = "0.8.1"), Modelica(version = "3.2.2")));
end WhiteNoiseInjection;
