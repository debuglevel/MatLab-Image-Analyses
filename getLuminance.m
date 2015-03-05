function [luminance] = getLuminance (filename)
% getLuminance  gets the luminance of an image
%
% SYNOPSIS: getLuminance(filename)
%
% INPUT filename: path to the image to process
%
% created by: Marc V. Kohaupt
% Licence: Creative Commons Zero / public domain
% last change and history: see version control system
% created with Octave 3.8.1 i686-pc-linux-gnu

% assumption: luminance can be calculated just by averaging the L auf L*a*b*
Lab = getLabImage(filename);
L = Lab(:,1);
Lab= []; % free memory
luminance = mean(L);

% some other attempt to calculate luminance based on http://stackoverflow.com/questions/596216/formula-to-determine-brightness-of-rgb-color
%[RGB, map, alpha] = imread(filename);
%R = RGB(:,1);
%G = RGB(:,2);
%B = RGB(:,3);
%if max(max(R)) > 1.0 || max(max(G)) > 1.0 || max(max(B)) > 1.0
%  R = double(R) / 255;
%  G = double(G) / 255;
%  B = double(B) / 255;
%end
%
%lumi2 = ...
%  mean ( ...
%    sqrt ( ...
%     0.299.*R + 0.587.*G + 0.114.*B
%      %( 0.299 .* (R .^ 2)) + ...
%      %( 0.587 .* (G .^ 2)) + ... 
%      %( 0.114 .* (B .^ 2))   ...
%    ) 
%  )

endfunction