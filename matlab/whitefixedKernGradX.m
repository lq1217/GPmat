function gX = whitefixedKernGradX(kern, X, X2)

% WHITEFIXEDKERNGRADX Gradient of WHITEFIXED kernel with respect to a point x.
% FORMAT
% DESC computes the gradient of the fixed parameter white noise
% kernel with respect to the input positions. 
% ARG kern : kernel structure for which gradients are being
% computed.
% ARG x : locations against which gradients are being computed.
% RETURN g : the returned gradients. The gradients are returned in
% a matrix which is numData x numInputs x numData. Where numData is
% the number of data points and numInputs is the number of input
% dimensions in X.
%
% FORMAT
% DESC computes the gradident of the fixed parameter white noise
% kernel with respect to the input positions where both the row
% positions and column positions are provided separately.
% ARG kern : kernel structure for which gradients are being
% computed.
% ARG x1 : row locations against which gradients are being computed.
% ARG x2 : column locations against which gradients are being computed.
% RETURN g : the returned gradients. The gradients are returned in
% a matrix which is numData2 x numInputs x numData1. Where numData1 is
% the number of data points in X1, numData2 is the number of data
% points in X2 and numInputs is the number of input
% dimensions in X.
%
% SEEALSO whitefixedKernParamInit, kernGradX, whitefixedKernDiagGradX
%
% COPYRIGHT : Nathaniel J. King, 2006

% KERN


gX = whiteKernGradX(kern, X, X2);