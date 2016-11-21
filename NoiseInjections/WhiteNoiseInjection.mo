within NoiseInjections
model WhiteNoiseInjection
  parameter Real mu = 0;
  parameter Real sigma = 0.01;
  parameter Real samplePeriod = 0.02;
  
  OpenIPSL.Connectors.PwPin pin annotation(Placement(visible = true, transformation(origin = {-60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.NormalNoise noise(mu = mu, samplePeriod = samplePeriod, sigma = sigma)  annotation(Placement(visible = true, transformation(origin = {20, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  pin.ir*pin.vr = noise.y;
  pin.ii*pin.vi = 0;
  annotation(uses(OpenIPSL(version = "0.8.1"), Modelica(version = "3.2.2")));
end WhiteNoiseInjection;
