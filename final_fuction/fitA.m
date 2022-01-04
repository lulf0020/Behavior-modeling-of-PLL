function [Yout,Xf,Af] = fitA(Xin,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 14-Nov-2021 15:08:22.
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
inmean = [1.4608e+06,5.5e-11,0.0027961,5.4687e-08,1e-07,1542.3,1.9038e+07,2.2305e+09,550e-14,550e-13,575e-15,501,475e2,575e3,78];
inwid = [4.95e+05,4.5e-11,0.002,4.5e-08,0,494.5,1e+07,1.4429e+09,350e-14,450e-13,525e-15,491,425e2,525e3,73];
outmean = 2242229025.15723;
outwid = 1452920000.00000;

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
x1_step2.xoffset = [-0.930817610062893;-1;-0.898034591194969;-0.993046820405311;-1.09459717267299;-0.903773584905661;-0.815206399157816;0;-0.831111111111111;-1.0952380952381;-1.020366598778;-0.647058823529412;-1.0952380952381;-1.06849315068493];
x1_step2.gain = [1;1;1;1;1;1;1;2.17391304347826;1.17647058823529;1.67464114832536;2.40641449141827;1.34920634920635;1.04270109235353;1.1846418486904];
x1_step2.ymin = -1;

% Layer 1
b1 = [0.089301329707712803763;0.028906158506954611476;-0.11901847543503470128;-0.23596766630774665408;0.16232987990398603517;0.21004100259453853394;-0.14630716558592513077;-0.14419636670073304741;-0.014462258031828949603;0.34470872453031620175;0.062581437203957035464;0.15206089845748035905;0.0053292327037602641934;0.051109905431206942295;-0.022247677338805747771];
IW1_1 = [0.072902449258428397849 0.061417508210473426011 -0.03226354002509982527 -0.025532572120066994448 0.052891432468570649672 -0.026141690698986301544 0.053235848669774488151 -0.042935295162928946433 -0.026945157084082436288 -0.03973114165470899295 0.014305554420913756813 0.058216556956181823856 0.016779925035274739081 0.067548859405777206266;0.044763063317978857292 0.029285936356667346958 0.0066326031652078265219 0.024343694376231059251 0.049373770804092449727 -0.027740631268356231304 0.051991004923518518988 0.060812892417596603467 0.051012529694255452639 0.092760728081233853604 -0.00085415712593863086285 -0.051671373714841491165 0.032752423824869543456 0.053684367534067620187;-0.10036631265035571292 -0.043046379952647192968 0.0019892439160719512826 0.021071876186265117714 -0.082555980540620799157 -0.033052014531821098664 0.17745941248134958212 -0.074127898485727081179 -0.056152833276059709033 -0.10532348305150912582 -0.024253473301933069911 -0.12135275845022636121 -0.016800302481291117668 0.024381597331624951103;-0.043847831467264515581 0.00077465174561195824978 0.01715942980299858811 0.034926979903566260366 -0.051031032362610161124 -0.033255770341049976924 -0.084934472535325419851 -0.027072248336354579751 -0.15219943434440041941 0.033525690452643197581 0.041693853817442755316 -0.08868221643166333823 -0.063143177049273413459 -0.040965906602401735981;0.046625816182969521961 -0.035921261057680939355 0.02036584585347313639 -0.0035721394085811530687 0.034579142957785247159 0.040893635687092658171 0.11114790637262357553 -0.14827508572845343737 -0.0005224326164764248959 -0.026842845043690614221 0.083344871104551215835 -0.11243162593362374113 0.0123467965849415693 0.015371558923036574701;0.030168383786131267726 0.0098288028912329253317 0.04196876544137929238 0.030145348001454689429 0.030478845639682828478 -0.0032732380223557595335 -0.23253508721071142196 -0.035306405329032675144 -0.036383358880828185755 -0.027696978569081719818 -0.10073598522496675367 -0.045057939838450522529 0.066971148336240363119 -0.021322601614528126357;-0.071733868392244534706 0.014771220505033138409 -0.055701439109816106021 -0.0095698146282765482462 -0.045843305162525785357 -0.01806800938831305825 0.13382235005004447514 0.11700518117907472704 0.024179230807245235407 0.014154423810232661524 -0.18148677717749164828 0.065299296367501202809 -0.019348566431901640522 -0.023594391103141914429;-0.041337316496795874221 0.016393174333983510926 -0.0091825410047007005598 0.03418835369468375962 -0.034548468814892860368 0.03558528240598200082 -0.031755432150133502955 -0.082523772216279739355 -0.014832193682427299158 -0.040411455338782743818 -0.017249543742682452857 0.010330687043632996377 -0.0012031232999271264904 -0.010502485909886720428;-0.0065212550506353805443 0.033288878747409933467 0.10895118157233589506 0.0080243300193380100171 0.095296660133858263064 -0.013590885881493881826 0.031675180224961976827 0.0087805795111154348598 0.076061710826785422501 -0.11371099004146363598 0.042800697320160688286 0.018802441911451795581 -0.030608714959364281133 0.024413162987528293918;0.12673301978427731207 0.027637178930247422587 -0.052190845124570686697 -0.00085109667024549720288 0.10106853558897989365 -0.0058152480100079608979 -0.37838623669723508991 0.046950369901995595012 0.023877472402373318972 -0.028816262214603823033 0.034436021150031345672 0.010010789873465457053 0.0087175351833870748375 0.010686957596866601683;0.033652539750955889897 -0.029917355906641459468 0.02294483920150029721 -0.016716977864877319987 0.078296419496208344291 0.012560313410815300214 0.051424433973978195267 0.023276756432294969795 -0.031318277458959556392 -0.023799220581984397577 -0.022604807157501120851 0.043158850101093229612 0.0082423922896236040403 -0.065477838714424224653;0.016475437083459516102 -0.073072171778102879003 0.050385444225824804754 -0.0048551717834826868536 0.068579764266256781902 -0.019799242876104950623 0.031029065963215623353 0.0071390416037860312051 -0.018395762181523743484 0.076474506242084988594 -0.021330672697113039343 0.01884787635914965398 -0.047264883878967295372 -0.077865491671108316707;-0.034119950467581400266 -0.077326149301114074919 0.035840261022156379156 -0.033307609255894363165 -0.021823200975993658352 -0.010029157065421978948 -0.19314967468365903946 -0.017623896166148476927 0.21660376328148364666 -0.010321112141597242953 -0.044797751369556153278 0.12431052572719947236 0.050271690291269731377 0.087275735134533904969;0.077153908482862243456 -0.052057461818399791698 -0.043621206333239306852 0.0062703277298020399996 0.007164902115853488164 -0.10858953187427798637 0.048361917721370412115 0.036038433314080478564 0.047791718695442637899 0.063640388500767752777 -0.025680024629746330683 0.027132455404690471873 0.037714749626495402968 0.076065147433820728962;0.023182800714481147791 -0.049345379510736302187 -0.020047060773318740867 -0.049086399886794078451 0.10701943425282831046 -0.13067047608656140456 -0.16530790271227976951 0.054765096450861937283 -0.050875066065802512782 0.034590835833534359922 -0.03325158630755457867 -0.1065094351614104401 -0.059263462353281705364 0.053189034693491496486];

% Layer 2
b2 = 0.041718818750141738183;
LW2_1 = [0.50767782426655883032 0.46447913034707910551 0.55893610471241772508 -0.56682633295936835083 0.56651927422899217568 -0.60911154993577953931 0.55104052383251234115 -0.45417907188438627619 0.27246319130696194932 -0.72509374471562038078 0.38028582241170644229 0.43789148727695387242 -0.65589447036949588554 0.4920871891654730601 -0.59991712463992008519];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 1;
y1_step1.xoffset = -0.817628654817356;

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