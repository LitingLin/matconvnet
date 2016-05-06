function [weights, momentum] = solver_sgd(weights, momentum, grad, opts, lr)
%SOLVER_SGD
%   Example SGD solver, for use with CNN_TRAIN and CNN_TRAIN_DAG.
%
%   Solver options: (opts.train.solverOpts)
%
%   `momentum`:: 0.9
%      Parameter for Momentum SGD; set to 0 for standard SGD.
%
%   Note: for backwards compatibility, the parameter can also be set in
%   opts.train.momentum.

% Copyright (C) 2016 Joao F. Henriques.
% All rights reserved.
%
% This file is part of the VLFeat library and is made available under
% the terms of the BSD license (see the COPYING file).

if isempty(momentum)
  momentum = 0 ;
end

momentum = opts.momentum * momentum - grad ;
weights = weights + lr * momentum ;
