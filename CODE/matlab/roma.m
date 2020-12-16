function J = roma(m)
%ROMA Orange, yellow, cyan, blue scientific colormap
%	ROMA(M) returns an M-by-3 matrix containing the 'roma' scientific colormap
%	created by Fabio Crameri, a diverging but perceptually uniform colormap.
%
%	ROMA, by itself, is the same length as the current figure's colormap. If no
%  figure exists, MATLAB uses the length of the default colormap.
%
%  See also SPECTRAL, RYB, VIK, POLARMAP, COLORMAP.
%
%	Author: F. Beauducel <beauducel@ipgp.fr>, colormap by Fabio Crameri
%     http://www.fabiocrameri.ch/colourmaps.php
%     (Creative Commons Attribution 4.0 International License)
%	Created: 2020-12-15 in Yogyakarta (Indonesia)

if nargin < 1
   f = get(groot,'CurrentFigure');
   if isempty(f)
      m = size(get(groot,'DefaultFigureColormap'),1);
   else
      m = size(f.Colormap,1);
   end
end

% 256-colors base
rgb = [ ...
0.496845 0.099626 0.000000;
0.501412 0.111589 0.003827;
0.505948 0.122812 0.007536;
0.510490 0.133620 0.011176;
0.515017 0.143973 0.014691;
0.519529 0.153965 0.017936;
0.524028 0.163733 0.021020;
0.528514 0.173192 0.023941;
0.532977 0.182467 0.026768;
0.537418 0.191589 0.029740;
0.541815 0.200535 0.032886;
0.546205 0.209380 0.036371;
0.550547 0.218097 0.039850;
0.554865 0.226705 0.043275;
0.559151 0.235223 0.046908;
0.563416 0.243617 0.050381;
0.567640 0.251989 0.053844;
0.571835 0.260262 0.057332;
0.576012 0.268483 0.060810;
0.580145 0.276650 0.064287;
0.584250 0.284743 0.067738;
0.588325 0.292810 0.071178;
0.592391 0.300829 0.074547;
0.596410 0.308833 0.077891;
0.600407 0.316771 0.081344;
0.604386 0.324676 0.084709;
0.608336 0.332582 0.088059;
0.612252 0.340432 0.091425;
0.616159 0.348266 0.094762;
0.620044 0.356084 0.098071;
0.623904 0.363867 0.101346;
0.627742 0.371641 0.104624;
0.631566 0.379410 0.107945;
0.635369 0.387155 0.111286;
0.639163 0.394901 0.114522;
0.642941 0.402629 0.117860;
0.646709 0.410367 0.121118;
0.650464 0.418074 0.124428;
0.654209 0.425794 0.127755;
0.657953 0.433508 0.131082;
0.661687 0.441231 0.134416;
0.665412 0.448963 0.137762;
0.669142 0.456684 0.141122;
0.672873 0.464433 0.144496;
0.676601 0.472178 0.147905;
0.680329 0.479939 0.151340;
0.684071 0.487719 0.154835;
0.687827 0.495507 0.158398;
0.691588 0.503320 0.161996;
0.695366 0.511166 0.165603;
0.699156 0.519045 0.169380;
0.702975 0.526947 0.173152;
0.706813 0.534877 0.177058;
0.710674 0.542854 0.181032;
0.714560 0.550866 0.185175;
0.718485 0.558920 0.189387;
0.722442 0.567038 0.193767;
0.726444 0.575192 0.198261;
0.730485 0.583405 0.202947;
0.734572 0.591684 0.207814;
0.738704 0.600015 0.212854;
0.742889 0.608418 0.218131;
0.747123 0.616876 0.223611;
0.751418 0.625398 0.229326;
0.755760 0.633996 0.235325;
0.760163 0.642647 0.241558;
0.764626 0.651366 0.248089;
0.769138 0.660138 0.254901;
0.773709 0.668966 0.261999;
0.778335 0.677840 0.269434;
0.783001 0.686744 0.277165;
0.787711 0.695680 0.285203;
0.792457 0.704622 0.293581;
0.797224 0.713566 0.302268;
0.802010 0.722486 0.311280;
0.806806 0.731375 0.320593;
0.811588 0.740210 0.330173;
0.816353 0.748957 0.340035;
0.821078 0.757611 0.350147;
0.825755 0.766142 0.360474;
0.830371 0.774522 0.371026;
0.834903 0.782742 0.381762;
0.839338 0.790773 0.392642;
0.843655 0.798596 0.403654;
0.847850 0.806194 0.414747;
0.851905 0.813544 0.425906;
0.855801 0.820643 0.437113;
0.859527 0.827476 0.448313;
0.863076 0.834035 0.459504;
0.866428 0.840307 0.470649;
0.869582 0.846288 0.481729;
0.872531 0.851993 0.492717;
0.875260 0.857403 0.503618;
0.877767 0.862540 0.514408;
0.880043 0.867387 0.525057;
0.882089 0.871973 0.535567;
0.883897 0.876287 0.545948;
0.885456 0.880350 0.556154;
0.886771 0.884173 0.566222;
0.887829 0.887752 0.576132;
0.888639 0.891111 0.585868;
0.889183 0.894257 0.595438;
0.889462 0.897197 0.604853;
0.889474 0.899939 0.614094;
0.889213 0.902497 0.623186;
0.888675 0.904879 0.632101;
0.887849 0.907092 0.640851;
0.886743 0.909141 0.649445;
0.885340 0.911042 0.657868;
0.883645 0.912793 0.666117;
0.881647 0.914403 0.674206;
0.879342 0.915870 0.682122;
0.876730 0.917216 0.689876;
0.873812 0.918420 0.697447;
0.870576 0.919502 0.704850;
0.867026 0.920459 0.712073;
0.863164 0.921295 0.719118;
0.858974 0.922011 0.725980;
0.854472 0.922602 0.732657;
0.849654 0.923073 0.739148;
0.844516 0.923422 0.745441;
0.839064 0.923648 0.751554;
0.833303 0.923750 0.757464;
0.827233 0.923728 0.763181;
0.820858 0.923578 0.768703;
0.814185 0.923298 0.774030;
0.807223 0.922886 0.779162;
0.799970 0.922340 0.784100;
0.792431 0.921655 0.788832;
0.784623 0.920824 0.793371;
0.776542 0.919856 0.797707;
0.768196 0.918734 0.801854;
0.759602 0.917467 0.805806;
0.750772 0.916029 0.809568;
0.741691 0.914442 0.813132;
0.732395 0.912681 0.816514;
0.722868 0.910753 0.819696;
0.713142 0.908647 0.822701;
0.703222 0.906364 0.825512;
0.693114 0.903893 0.828140;
0.682827 0.901238 0.830587;
0.672388 0.898390 0.832843;
0.661799 0.895352 0.834922;
0.651074 0.892115 0.836817;
0.640238 0.888678 0.838527;
0.629296 0.885038 0.840063;
0.618282 0.881200 0.841411;
0.607206 0.877157 0.842583;
0.596077 0.872922 0.843568;
0.584937 0.868490 0.844384;
0.573789 0.863858 0.845020;
0.562674 0.859031 0.845478;
0.551593 0.854022 0.845762;
0.540580 0.848838 0.845876;
0.529662 0.843474 0.845820;
0.518858 0.837953 0.845599;
0.508186 0.832268 0.845215;
0.497670 0.826435 0.844672;
0.487327 0.820459 0.843969;
0.477178 0.814357 0.843121;
0.467254 0.808137 0.842130;
0.457548 0.801802 0.840993;
0.448093 0.795369 0.839727;
0.438894 0.788850 0.838326;
0.429973 0.782245 0.836809;
0.421314 0.775567 0.835174;
0.412960 0.768827 0.833431;
0.404865 0.762037 0.831588;
0.397070 0.755206 0.829645;
0.389570 0.748331 0.827608;
0.382350 0.741419 0.825492;
0.375417 0.734495 0.823301;
0.368773 0.727543 0.821037;
0.362383 0.720579 0.818704;
0.356266 0.713610 0.816321;
0.350401 0.706638 0.813871;
0.344767 0.699655 0.811381;
0.339388 0.692690 0.808842;
0.334215 0.685718 0.806262;
0.329259 0.678754 0.803644;
0.324478 0.671805 0.800996;
0.319917 0.664865 0.798319;
0.315514 0.657949 0.795616;
0.311269 0.651037 0.792896;
0.307176 0.644139 0.790151;
0.303223 0.637270 0.787394;
0.299421 0.630415 0.784624;
0.295709 0.623578 0.781839;
0.292126 0.616757 0.779042;
0.288637 0.609952 0.776243;
0.285227 0.603177 0.773433;
0.281932 0.596418 0.770627;
0.278695 0.589674 0.767809;
0.275536 0.582959 0.765001;
0.272407 0.576276 0.762181;
0.269386 0.569588 0.759366;
0.266385 0.562945 0.756558;
0.263447 0.556303 0.753748;
0.260532 0.549699 0.750948;
0.257663 0.543111 0.748143;
0.254858 0.536546 0.745342;
0.252055 0.529996 0.742553;
0.249280 0.523472 0.739769;
0.246538 0.516968 0.736982;
0.243816 0.510478 0.734207;
0.241139 0.504023 0.731435;
0.238460 0.497585 0.728673;
0.235832 0.491168 0.725921;
0.233172 0.484751 0.723166;
0.230563 0.478376 0.720425;
0.227981 0.472024 0.717696;
0.225380 0.465671 0.714962;
0.222818 0.459363 0.712240;
0.220261 0.453062 0.709531;
0.217698 0.446780 0.706824;
0.215140 0.440515 0.704119;
0.212618 0.434272 0.701424;
0.210094 0.428057 0.698736;
0.207584 0.421842 0.696062;
0.205069 0.415662 0.693386;
0.202559 0.409496 0.690714;
0.200048 0.403347 0.688058;
0.197574 0.397204 0.685404;
0.195089 0.391098 0.682752;
0.192594 0.384984 0.680105;
0.190104 0.378904 0.677478;
0.187646 0.372830 0.674840;
0.185147 0.366784 0.672216;
0.182620 0.360728 0.669595;
0.180129 0.354723 0.666972;
0.177660 0.348701 0.664362;
0.175131 0.342707 0.661761;
0.172593 0.336706 0.659150;
0.170075 0.330723 0.656558;
0.167525 0.324753 0.653958;
0.164939 0.318804 0.651369;
0.162384 0.312849 0.648780;
0.159737 0.306914 0.646193;
0.157120 0.300970 0.643609;
0.154458 0.295044 0.641030;
0.151760 0.289137 0.638458;
0.149038 0.283217 0.635885;
0.146267 0.277303 0.633315;
0.143460 0.271380 0.630749;
0.140601 0.265474 0.628180;
0.137689 0.259574 0.625609;
0.134704 0.253654 0.623048;
0.131632 0.247744 0.620488;
0.128492 0.241818 0.617918;
0.125280 0.235896 0.615354;
0.121937 0.229930 0.612792;
0.118594 0.223993 0.610234;
0.115017 0.218053 0.607680;
0.111419 0.212093 0.605113;
0.107611 0.206110 0.602552;
0.103699 0.200063 0.599992;
];

n = size(rgb,1);
J = interp1(1:n,rgb,linspace(1,n,m));
