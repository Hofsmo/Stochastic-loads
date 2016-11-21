within NoiseInjections;
model WienerProcessInjection
  // Parameters to be used by the nois generators
  parameter Real active_mu = 0 "Expectation value active power noise";
  parameter Real active_sigma = 0.01 "Standard deviation active power noise";
    
  parameter Real samplePeriod = 0.02 "Sample period";

  Modelica.Blocks.Noise.NormalNoise noise annotation(Placement(visible = true, transformation(origin = {-50, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
end WienerProcessInjection;
