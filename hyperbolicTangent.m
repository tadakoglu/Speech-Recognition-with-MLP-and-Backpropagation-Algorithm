function y = hyperbolicTangent(x)
% HyperbolicTangent function
% Thanks to Mo Chen 
% y =x;
%  y = exp(-log1pexp(-x));
y = tanh(x);
% function y = log1pexp(x)
% % Accurately compute y = log(1+exp(x))
% % reference: Accurately Computing log(1-exp(|a|)) Martin Machler
% seed = 33.3;
% y = x;
% idx = x<seed;
% y(idx) = log1p(exp(x(idx)));

% y=softmax(x);