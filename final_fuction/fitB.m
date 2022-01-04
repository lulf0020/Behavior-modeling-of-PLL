function [Yout,Xf,Af] = fitB(Xin,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 21-Nov-2021 15:28:33.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx15 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx1 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====
%data pre-operation
inmean = [1472282.37791932,5.51528662420382e-11,0.00278906581740977,5.45339702760085e-08,9.99999999999999e-08,1538.64118895966,19037154.9893843,2243297653.92781,5.50000000000000e-12,5.50000000000000e-11,5.75000000000000e-13,501,47500,575000,78];
inwid = [495000,4.50000000000000e-11,0.00200000000000000,4.50000000000000e-08,0,494.500000000000,10000000,1442910000.00000,3.50000000000000e-12,4.50000000000000e-11,5.25000000000000e-13,491,42500,525000,73];
outmean = -14.4896188789411;
outwid = 5.58174748243277;

X = Xin;
for i = 1:15
    X(:,i) = X(:,i)-inmean(i);
    if inwid(i) == 0
        X(:,i) = 0;
    else
        X(:,i) = X(:,i)/inwid(i);
    end
end


% Input 1
x1_step1.keep = [1 2 3 4 6 7 8 9 10 11 12 13 14 15];
x1_step2.xoffset = [-0.954105813978425;-1.00339702760085;-0.894532908704883;-0.989643783911299;-1.08724204036332;-0.903715498938429;-0.824041453678894;-0.934285714285714;-1;-1.0952380952381;-1.020366598778;-0.997647058823529;-1.0952380952381;-1.06849315068493];
x1_step2.gain = [1;1;1;1;1;1;1;1.03703703703704;1.00334448160535;0.954545454545454;0.991404038896482;1.00472813238771;0.956284153005464;0.972826325250923];
x1_step2.ymin = -1;

% Layer 1
b1 = [5.6425294879269882742;-11.018461821081441343;-9.6787875713813917855;-0.44742005531310669042;-6.1211406991677419498;-6.6789438025198215598];
IW1_1 = [0.3446032804994874077 0.025594546518674491514 0.34080630870465000726 0.092953738285082548876 0.44288037206030633763 0.086397958784526898701 -0.80929318681939554914 0.16178921513018013068 0.10000637208556477364 0.13822492580247605631 3.8462908885725890507 0.54879595197523556305 0.0018295516305387288757 1.5621893689095633917;1.0765862856709511597 0.66206325175073788003 -0.83785482540758859926 0.72942803421619617499 1.6119052623980401062 -1.3755886253484970183 -1.9801956056659122396 2.3234473124096051144 -1.1411645450663647772 0.73049120292769298413 -4.5376898219499111065 -7.7998313043691531732 0.88859095897147999388 -1.8039326303771492377;0.60335055120236391613 -0.015369270550695323524 0.058390264613844715391 -0.012923223873917446397 1.6228061988776742997 -0.15706459004619241493 -2.2042949618152540836 -0.30950343867996038538 0.94803504915045599954 0.04400752406773700276 -4.9741146802791904591 1.3250296129405829682 -1.1796573014526614553 -4.6012595554722652835;0.069281537763414599573 -0.00068443891016355725559 0.0016840214888578267875 -0.0010287068259918993353 0.061395288061228875387 -0.0024477764276841624223 -0.037854379118269804172 -0.00087577941972785287514 0.00034884160589202097913 -0.00016836227309360561632 -0.0054946537022482963564 -0.0020245815582013212269 -0.00289708315661323405 -0.0036187746321700775196;-0.33520791390881377048 -0.023975377868185016039 -0.26304949983901143584 -0.085665140716835147527 -0.55308291346336291294 -0.0015289616412997924719 0.8244377676450518333 -0.07745278760369339599 -0.35381878848564751738 -0.016590932465508856364 -4.5603633424718950096 -0.74773223831267976447 0.19684514925159521392 -2.1015740053309062141;-0.031043692224801140711 -0.0084324859473955890432 0.062987187634122782098 0.010255780806920113124 -0.42175755001426179502 0.1116130346882711899 0.4892690639859615942 0.18357182079992903634 -0.48601238402234975267 0.09013579854070029318 -4.509227544105260499 -0.45300904854379442366 0.53688104156441851522 -1.8345823848890883134];

% Layer 2
b2 = 1.7093277042979611036;
LW2_1 = [-1.5587023607067724829 0.098363716424867644883 0.75763058280160300306 -1.6485236879203253313 -1.400241661426754991 2.2834977919326564511];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 1;
y1_step1.xoffset = -0.930007904097837;


% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
    X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},1); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    X{1,ts} = X{1,ts}';
    temp = removeconstantrows_apply(X{1,ts},x1_step1);
    Xp1 = mapminmax_apply(temp,x1_step2);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
    Y{1,ts} = Y{1,ts}';
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX
    Y = cell2mat(Y);
end

Yout = Y;
if(outwid~=0)
    Yout = Yout*outwid;
end
Yout= Yout + outmean;

Yout = exp(Yout);

end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Remove Constants Input Processing Function
function y = removeconstantrows_apply(x,settings)
y = x(settings.keep,:);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end