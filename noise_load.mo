class noise_load
  import Modelica.Math.Random.Generators.*;
  extends OpenIPSL.Electrical.Loads.PSAT.BaseClasses.baseLoad;

  // Global parameters
  parameter Modelica.SIunits.Period samplePeriod = 0.05
    "Sample period for the generation of random numbers";
  parameter Integer globalSeed = 30020
    "Global seed to initialize random number generator";

// Random number generators with exposed state
  parameter Integer localSeed = 614657
    "Local seed to initialize random number generator";
  parameter Real gain = 0.01;
  parameter Real offset = 1;
  output Real r64 "Random number generated with Xorshift64star";
protected
  discrete Integer state64[2](   each start=0, each fixed = true);
algorithm
  when initial() then
    // Generate initial state from localSeed and globalSeed
    state64   := Xorshift64star.initialState(  localSeed, globalSeed);
    r64       := 0;
    P:=P_0/S_b;
  elsewhen sample(0,samplePeriod) then
    (r64,  state64)   := Xorshift64star.random(pre(state64));
    P :=P_0/S_b*(offset + (r64-0.5)*gain);
  end when;
equation
  Q = Q_0/S_b;
end noise_load;
