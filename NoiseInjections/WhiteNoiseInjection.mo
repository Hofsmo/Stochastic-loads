within NoiseInjections;
model WhiteNoiseInjection
extends BaseClass;

equation
  pin.ir*pin.vr = active.y;
  pin.ii*pin.vi = 0;
  annotation(uses(OpenIPSL(version = "0.8.1"), Modelica(version = "3.2.2")));
end WhiteNoiseInjection;
