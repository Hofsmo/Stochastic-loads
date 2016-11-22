within NoiseInjections;
model WhiteNoiseInjection
extends BaseClass;

equation
  pin.vr*pin.ir + pin.vi*pin.ii = noise_gen.y;
  pin.vi*pin.ir - pin.vr*pin.ii = 0;
  annotation(uses(OpenIPSL(version = "0.8.1"), Modelica(version = "3.2.2")));
end WhiteNoiseInjection;
