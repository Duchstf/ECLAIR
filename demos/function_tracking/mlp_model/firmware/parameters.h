#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "defines.h"

// Layer parameters
template<int IN_DIM, int OUT_DIM>
struct LayerParams {
    weight_t W[OUT_DIM][IN_DIM]; // Weight matrix
    weight_t b[OUT_DIM];         // Bias vector
};

template<int IN_DIM, int OUT_DIM>
struct LayerContext {
    weight_t x_copy[IN_DIM]; // Input copy
    weight_t z[OUT_DIM];      // Pre-activation
};

//MODEL
struct Params {
    LayerParams<INPUT_DIM, H1> L0;
    LayerParams<H1, OUTPUT_DIM> L1;
};

//CONTEXT
struct Context {
    LayerContext<INPUT_DIM, H1> C0;
    LayerContext<H1, OUTPUT_DIM> C1;
};

//PARAM-INIT
static Params P = {
    { {
{ weight_t(4.25936079e-01) },
{ weight_t(-9.48994006e-01) },
{ weight_t(-1.21900153e-01) },
{ weight_t(8.72141177e-01) },
{ weight_t(6.72432341e-01) },
{ weight_t(-7.33813287e-01) },
{ weight_t(-6.81451487e-01) },
{ weight_t(-2.24213009e-01) },
{ weight_t(4.85032357e-01) },
{ weight_t(-1.93710027e-01) },
{ weight_t(-8.98243093e-01) },
{ weight_t(-3.21318776e-01) },
{ weight_t(-3.78447974e-01) },
{ weight_t(9.98495520e-01) },
{ weight_t(6.35312788e-01) },
{ weight_t(5.03031763e-01) },
{ weight_t(4.75502686e-01) },
{ weight_t(2.10944748e-01) },
{ weight_t(1.65356886e-01) },
{ weight_t(9.04702543e-01) },
{ weight_t(6.12167081e-01) },
{ weight_t(-5.84803819e-02) },
{ weight_t(-8.57621835e-01) },
{ weight_t(3.92466725e-01) },
{ weight_t(8.08139356e-01) },
{ weight_t(-2.92129186e-01) },
{ weight_t(-6.30788944e-01) },
{ weight_t(-5.49857085e-01) },
{ weight_t(-8.53109290e-02) },
{ weight_t(6.23344870e-01) },
{ weight_t(-5.41784740e-01) },
{ weight_t(-1.13106785e-01) },
{ weight_t(1.10134178e-01) },
{ weight_t(-7.17408142e-01) },
{ weight_t(-8.46501402e-01) },
{ weight_t(2.82484327e-01) },
{ weight_t(-5.51451603e-02) },
{ weight_t(-8.68549048e-01) },
{ weight_t(8.29377625e-01) },
{ weight_t(-7.42920624e-01) },
{ weight_t(-4.43553353e-02) },
{ weight_t(1.62241324e-01) },
{ weight_t(-2.95576191e-01) },
{ weight_t(-7.50943184e-01) },
{ weight_t(3.31723997e-01) },
{ weight_t(-4.84181337e-01) },
{ weight_t(-8.82261039e-01) },
{ weight_t(1.46155876e-01) },
{ weight_t(-4.98334791e-01) },
{ weight_t(4.04197981e-01) },
{ weight_t(-8.59484713e-01) },
{ weight_t(-6.57515416e-02) },
{ weight_t(6.92591242e-01) },
{ weight_t(-4.37019090e-01) },
{ weight_t(4.54921010e-01) },
{ weight_t(9.16256534e-01) },
{ weight_t(6.66007751e-01) },
{ weight_t(8.09005714e-01) },
{ weight_t(8.23458170e-01) },
{ weight_t(-5.51580706e-01) },
{ weight_t(-2.60133327e-01) },
{ weight_t(3.70409385e-01) },
{ weight_t(9.56170183e-01) },
{ weight_t(9.74494163e-01) },
{ weight_t(-4.76508836e-01) },
{ weight_t(-4.96023250e-01) },
{ weight_t(-2.24850199e-01) },
{ weight_t(1.96144006e-01) },
{ weight_t(6.75294195e-01) },
{ weight_t(-9.07873593e-01) },
{ weight_t(-7.71934371e-01) },
{ weight_t(7.93843667e-01) },
{ weight_t(9.84168202e-03) },
{ weight_t(3.36689958e-01) },
{ weight_t(-7.68909679e-01) },
{ weight_t(-9.73420938e-01) },
{ weight_t(6.97196869e-01) },
{ weight_t(-3.37404623e-01) },
{ weight_t(6.16203570e-01) },
{ weight_t(2.43201989e-01) },
{ weight_t(-8.63199609e-01) },
{ weight_t(-4.39047958e-01) },
{ weight_t(-9.77728684e-01) },
{ weight_t(-7.40461592e-01) },
{ weight_t(-4.53149277e-01) },
{ weight_t(2.72097424e-01) },
{ weight_t(2.68050724e-01) },
{ weight_t(-6.80601283e-01) },
{ weight_t(-1.82580537e-01) },
{ weight_t(8.12900342e-01) },
{ weight_t(-1.04546000e-01) },
{ weight_t(3.24330748e-01) },
{ weight_t(-8.75118433e-01) },
{ weight_t(-5.54417273e-01) },
{ weight_t(-9.92806665e-01) },
{ weight_t(8.12541772e-01) },
{ weight_t(-2.10774079e-01) },
{ weight_t(-9.21786329e-01) },
{ weight_t(4.90110291e-02) },
{ weight_t(4.91793981e-01) },
{ weight_t(1.47276415e-01) },
{ weight_t(-6.39909968e-01) },
{ weight_t(6.27579266e-01) },
{ weight_t(7.27935979e-01) },
{ weight_t(9.93369123e-01) },
{ weight_t(-6.26369197e-01) },
{ weight_t(6.70446744e-01) },
{ weight_t(-5.13112688e-01) },
{ weight_t(7.57788273e-02) },
{ weight_t(1.65167308e-01) },
{ weight_t(2.00396259e-01) },
{ weight_t(4.25723284e-02) },
{ weight_t(8.63084557e-01) },
{ weight_t(-6.35840970e-01) },
{ weight_t(-7.00408881e-01) },
{ weight_t(8.18038220e-01) },
{ weight_t(6.90946040e-01) },
{ weight_t(9.33509186e-01) },
{ weight_t(7.67959495e-01) },
{ weight_t(-5.27702322e-01) },
{ weight_t(4.05241971e-01) },
{ weight_t(1.61480469e-01) },
{ weight_t(-8.11587966e-01) },
{ weight_t(2.38346400e-01) },
{ weight_t(2.40083244e-02) },
{ weight_t(-4.41318681e-01) },
{ weight_t(-3.85502601e-01) },
{ weight_t(-2.56636978e-01) }
}, { weight_t(-9.15681773e-01), weight_t(-8.43101293e-01), weight_t(6.39634180e-01), weight_t(-1.55161798e-01), weight_t(-4.34149575e-01), weight_t(-4.52809355e-01), weight_t(5.23026642e-01), weight_t(2.99191540e-01), weight_t(5.66319636e-01), weight_t(1.54406477e-01), weight_t(-6.10399141e-01), weight_t(5.06124881e-01), weight_t(-2.51956336e-01), weight_t(1.17605074e-01), weight_t(4.59956438e-01), weight_t(-6.78408346e-01), weight_t(8.90464994e-02), weight_t(-2.98818658e-01), weight_t(-9.30309222e-01), weight_t(-1.45677516e-01), weight_t(2.18640257e-01), weight_t(3.63793258e-01), weight_t(-3.86426155e-01), weight_t(9.06605216e-02), weight_t(-4.54466515e-01), weight_t(-5.18732617e-01), weight_t(1.59975536e-01), weight_t(3.91632636e-01), weight_t(2.21479701e-01), weight_t(-3.75762227e-01), weight_t(8.31735017e-01), weight_t(-6.03761355e-02), weight_t(1.30611348e-01), weight_t(1.21763219e-01), weight_t(-2.62172265e-01), weight_t(6.65896549e-01), weight_t(7.25245713e-01), weight_t(2.43287311e-01), weight_t(-3.97573723e-01), weight_t(4.16992066e-01), weight_t(1.69268007e-01), weight_t(-3.68942754e-01), weight_t(-3.06399081e-01), weight_t(-9.68408769e-01), weight_t(-8.02203881e-01), weight_t(5.51926813e-01), weight_t(-9.60441572e-02), weight_t(6.09289539e-01), weight_t(-6.06331004e-01), weight_t(-9.08221408e-02), weight_t(-7.44807732e-01), weight_t(-9.79817418e-01), weight_t(-4.28137373e-01), weight_t(-5.03928300e-01), weight_t(-7.26586747e-01), weight_t(2.81184050e-01), weight_t(4.77027251e-02), weight_t(-5.06094894e-01), weight_t(-5.61188623e-02), weight_t(3.07283188e-01), weight_t(6.72148498e-01), weight_t(2.54421953e-01), weight_t(-5.46759611e-01), weight_t(-3.95713324e-01), weight_t(1.81013408e-01), weight_t(-1.44518647e-01), weight_t(3.47342282e-01), weight_t(4.65372722e-01), weight_t(-2.88220676e-01), weight_t(9.26150798e-01), weight_t(4.44129005e-01), weight_t(5.24479370e-01), weight_t(-1.64114800e-01), weight_t(1.42905588e-02), weight_t(-1.95649810e-01), weight_t(5.88946329e-02), weight_t(5.91160255e-01), weight_t(-2.71971982e-03), weight_t(-3.58747801e-01), weight_t(-2.84916617e-01), weight_t(-1.30552437e-01), weight_t(6.53553126e-01), weight_t(-8.22683269e-01), weight_t(1.65317146e-01), weight_t(2.87873044e-01), weight_t(-9.73399670e-01), weight_t(1.75576175e-02), weight_t(9.31638142e-01), weight_t(2.89343801e-01), weight_t(3.06725518e-01), weight_t(8.63763593e-01), weight_t(-4.43608992e-01), weight_t(-6.71888904e-01), weight_t(-6.32835806e-01), weight_t(7.12396791e-01), weight_t(-5.33710149e-01), weight_t(-1.77817595e-01), weight_t(-6.96639889e-02), weight_t(5.83510183e-01), weight_t(7.58415647e-02), weight_t(9.12398926e-01), weight_t(6.85266689e-01), weight_t(-4.01280959e-02), weight_t(1.45721064e-01), weight_t(-8.95915528e-01), weight_t(3.92195299e-01), weight_t(-2.84017857e-01), weight_t(-9.27420030e-01), weight_t(-9.83244254e-01), weight_t(-1.75988721e-01), weight_t(-6.00014124e-01), weight_t(-2.85045019e-01), weight_t(-4.61284042e-01), weight_t(-7.59772730e-01), weight_t(-3.80436985e-01), weight_t(-6.72249718e-01), weight_t(5.08318973e-01), weight_t(2.69906283e-01), weight_t(-8.77465480e-01), weight_t(3.35321891e-02), weight_t(2.63716182e-03), weight_t(7.41461778e-01), weight_t(1.44447232e-01), weight_t(7.49448960e-01), weight_t(-1.54546119e-01), weight_t(-5.71213497e-02), weight_t(-1.59831638e-01), weight_t(-5.57264183e-01) } },
    { {
{ weight_t(4.75183723e-02), weight_t(-8.56282953e-02), weight_t(6.62942520e-02), weight_t(5.51558013e-02), weight_t(5.21023379e-02), weight_t(-3.27888587e-02), weight_t(-3.15717900e-03), weight_t(3.39636962e-02), weight_t(8.45677010e-02), weight_t(1.85293914e-02), weight_t(-4.77931310e-02), weight_t(-7.04737690e-02), weight_t(8.48027700e-03), weight_t(-1.50533562e-02), weight_t(-8.64763248e-02), weight_t(-4.71159557e-02), weight_t(-6.32728783e-02), weight_t(-7.61051884e-02), weight_t(9.58026876e-03), weight_t(-4.19703782e-02), weight_t(4.81304730e-02), weight_t(-8.47995372e-03), weight_t(-8.04248021e-02), weight_t(4.81145817e-02), weight_t(-5.36256283e-03), weight_t(4.01781562e-02), weight_t(4.60377367e-02), weight_t(-6.58374195e-02), weight_t(6.02310587e-03), weight_t(-1.06438494e-02), weight_t(-2.79298930e-02), weight_t(4.34517368e-02), weight_t(7.20379541e-02), weight_t(-5.78083461e-02), weight_t(3.51456843e-02), weight_t(7.32143557e-02), weight_t(8.44283593e-02), weight_t(-6.76302172e-02), weight_t(-1.69061871e-02), weight_t(-7.17664317e-02), weight_t(2.08523578e-03), weight_t(-7.72752862e-02), weight_t(2.08873541e-02), weight_t(6.86110631e-02), weight_t(7.90542723e-02), weight_t(-6.48444154e-02), weight_t(2.29011004e-02), weight_t(-6.77407558e-02), weight_t(6.88373717e-02), weight_t(-1.97715943e-02), weight_t(-7.04511669e-02), weight_t(-4.98388998e-02), weight_t(-5.02818556e-03), weight_t(-5.64915364e-02), weight_t(-1.91301418e-02), weight_t(8.00511521e-02), weight_t(3.18211809e-02), weight_t(8.72670032e-02), weight_t(-6.55233048e-02), weight_t(-2.78732829e-02), weight_t(2.38356716e-02), weight_t(4.68965984e-03), weight_t(6.30618817e-02), weight_t(-4.14743195e-02), weight_t(-3.91230308e-02), weight_t(3.45078222e-02), weight_t(3.92313281e-02), weight_t(-3.29397756e-02), weight_t(4.71542893e-02), weight_t(8.69500057e-02), weight_t(4.71736753e-02), weight_t(-5.57519763e-02), weight_t(1.42654474e-02), weight_t(6.99127041e-03), weight_t(3.90228242e-02), weight_t(-3.61317616e-02), weight_t(-6.64859428e-02), weight_t(-6.50152217e-03), weight_t(3.20967612e-02), weight_t(9.65246956e-03), weight_t(8.26311479e-02), weight_t(5.57077889e-02), weight_t(-6.80690536e-03), weight_t(3.97112287e-02), weight_t(-3.39505797e-02), weight_t(4.15099980e-02), weight_t(-3.01748510e-02), weight_t(-7.52260572e-02), weight_t(-4.41909775e-02), weight_t(7.50034979e-03), weight_t(6.84462767e-02), weight_t(-4.07584461e-02), weight_t(-1.02964766e-03), weight_t(-4.21672849e-02), weight_t(6.52183176e-02), weight_t(-5.25936626e-03), weight_t(-4.79331167e-02), weight_t(4.05374756e-02), weight_t(-6.27815695e-02), weight_t(5.30790728e-02), weight_t(5.79178504e-02), weight_t(7.11463577e-02), weight_t(3.43666061e-02), weight_t(1.68114764e-02), weight_t(-5.77967624e-02), weight_t(-1.17213120e-03), weight_t(7.66255699e-02), weight_t(-8.53041768e-02), weight_t(6.12135567e-02), weight_t(8.23876637e-02), weight_t(-6.22523980e-02), weight_t(-7.22001599e-02), weight_t(4.52404093e-02), weight_t(2.89136546e-02), weight_t(2.62454522e-02), weight_t(5.82577951e-02), weight_t(-4.74111830e-02), weight_t(-3.07247404e-02), weight_t(-7.14239270e-02), weight_t(3.42272498e-02), weight_t(6.82858869e-02), weight_t(-3.38697568e-02), weight_t(1.32140673e-02), weight_t(-3.04316462e-02), weight_t(-7.02203284e-03), weight_t(-5.03933060e-02), weight_t(-8.89859800e-03), weight_t(-7.03131571e-02) }
}, { weight_t(5.53072901e-02) } }
};

#endif