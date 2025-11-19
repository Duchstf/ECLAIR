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
{ weight_t(-3.99126828e-02) },
{ weight_t(-1.43560027e+00) },
{ weight_t(-9.87890044e-01) },
{ weight_t(-1.39210786e+00) },
{ weight_t(-1.07933846e+00) },
{ weight_t(1.41237983e-01) },
{ weight_t(-2.19310129e-01) },
{ weight_t(-3.11536338e-01) },
{ weight_t(-7.61765704e-01) },
{ weight_t(-9.20113318e-01) },
{ weight_t(-1.96950721e+00) },
{ weight_t(-1.62544162e+00) },
{ weight_t(-1.34812057e-01) },
{ weight_t(-1.89326437e+00) },
{ weight_t(-8.70582737e-01) },
{ weight_t(-1.65721557e+00) },
{ weight_t(-1.12157088e+00) },
{ weight_t(-9.72752400e-01) },
{ weight_t(-2.41883388e+00) },
{ weight_t(-6.73053316e-01) },
{ weight_t(3.89557237e-02) },
{ weight_t(-8.02290403e-01) },
{ weight_t(-2.04057630e-01) },
{ weight_t(-2.97018069e+00) },
{ weight_t(-3.71632858e-01) },
{ weight_t(-2.33867735e-01) },
{ weight_t(4.79799439e-01) },
{ weight_t(-3.59470972e+00) },
{ weight_t(-8.98058712e-01) },
{ weight_t(-1.31170204e+00) },
{ weight_t(-1.83828655e+00) },
{ weight_t(-6.08496957e-01) },
{ weight_t(-2.83199850e-01) },
{ weight_t(-2.89561005e+00) },
{ weight_t(-3.32024661e+00) },
{ weight_t(-3.17523078e-01) },
{ weight_t(-1.44104185e+00) },
{ weight_t(9.96627474e-02) },
{ weight_t(-2.82773376e-01) },
{ weight_t(-1.10989921e+00) },
{ weight_t(-6.26031333e-01) },
{ weight_t(-4.48631984e-01) },
{ weight_t(-3.01633472e-01) },
{ weight_t(-1.28908783e+00) },
{ weight_t(-2.33365949e+00) },
{ weight_t(-1.57052787e+00) },
{ weight_t(-2.42795635e+00) },
{ weight_t(-9.05694134e-01) },
{ weight_t(-1.71075984e+00) },
{ weight_t(-2.64577829e-01) },
{ weight_t(2.12033963e-03) },
{ weight_t(-1.05790142e+00) },
{ weight_t(-9.76809001e-01) },
{ weight_t(-1.33104810e+00) },
{ weight_t(-2.13667708e+00) },
{ weight_t(-1.20933059e+00) },
{ weight_t(8.20511343e-02) },
{ weight_t(-1.44289902e+00) },
{ weight_t(-1.76255478e+00) },
{ weight_t(-2.18156505e+00) },
{ weight_t(-2.25701765e+00) },
{ weight_t(-8.67078888e-02) },
{ weight_t(9.40534088e-02) },
{ weight_t(6.41378536e-01) },
{ weight_t(-2.39448667e+00) },
{ weight_t(1.00070331e+00) },
{ weight_t(-7.16290855e-01) },
{ weight_t(9.93008779e-01) },
{ weight_t(-9.72770758e-01) },
{ weight_t(-1.15321122e+00) },
{ weight_t(-2.04721040e+00) },
{ weight_t(-1.89120391e+00) },
{ weight_t(-2.29976397e+00) },
{ weight_t(-9.36305111e-01) },
{ weight_t(1.43242483e+00) },
{ weight_t(-2.45184635e+00) },
{ weight_t(-2.49985449e+00) },
{ weight_t(-1.68607970e+00) },
{ weight_t(-1.93033576e+00) },
{ weight_t(-1.67229185e+00) },
{ weight_t(1.77774293e-01) },
{ weight_t(-2.15651380e+00) },
{ weight_t(-4.61273007e-01) },
{ weight_t(-3.31546534e-01) },
{ weight_t(-2.47134778e+00) },
{ weight_t(-1.89471600e+00) },
{ weight_t(-2.20430772e+00) },
{ weight_t(-7.47546738e-01) },
{ weight_t(-1.98334405e+00) },
{ weight_t(-2.31335007e+00) },
{ weight_t(-1.41616880e+00) },
{ weight_t(-1.01781910e-01) },
{ weight_t(-2.32834846e+00) },
{ weight_t(-2.27021653e+00) },
{ weight_t(-9.68409360e-01) },
{ weight_t(3.02395463e-02) },
{ weight_t(-3.06321816e-01) },
{ weight_t(-7.39910949e-01) },
{ weight_t(-2.67868470e-01) },
{ weight_t(-1.32872007e+00) },
{ weight_t(-1.32940521e+00) },
{ weight_t(-1.36759425e+00) },
{ weight_t(-2.48675735e+00) },
{ weight_t(-1.04169437e+00) },
{ weight_t(-2.75132729e+00) },
{ weight_t(-1.23269647e+00) },
{ weight_t(-2.18502829e+00) },
{ weight_t(-2.01106800e+00) },
{ weight_t(-1.01494022e+00) },
{ weight_t(-2.38899724e+00) },
{ weight_t(-1.70777847e+00) },
{ weight_t(5.32546668e-01) },
{ weight_t(-1.46397634e+00) },
{ weight_t(-2.05894637e-01) },
{ weight_t(-1.45695149e+00) },
{ weight_t(8.58108329e-01) },
{ weight_t(-2.47225176e+00) },
{ weight_t(-5.00561822e-01) },
{ weight_t(-3.77404263e-01) },
{ weight_t(-2.49211913e-01) },
{ weight_t(-1.59606787e+00) },
{ weight_t(-2.28445391e-01) },
{ weight_t(-1.17903740e+00) },
{ weight_t(-2.24455327e+00) },
{ weight_t(-1.09434332e+00) },
{ weight_t(-1.26511777e+00) },
{ weight_t(7.95782386e-02) },
{ weight_t(-2.02852792e+00) }
}, { weight_t(-1.13176762e+00), weight_t(-2.49891177e+00), weight_t(-2.09936376e+00), weight_t(-1.30676925e+00), weight_t(-5.17792649e-01), weight_t(-3.21166228e+00), weight_t(-1.45993361e-01), weight_t(-7.71817388e-01), weight_t(-4.80172826e-01), weight_t(-1.41182776e+00), weight_t(-2.27056418e+00), weight_t(-1.30223962e+00), weight_t(-1.22227446e+00), weight_t(-1.67160339e+00), weight_t(-4.51241565e-01), weight_t(-2.11319608e+00), weight_t(-2.36129337e+00), weight_t(-2.14745726e+00), weight_t(-1.86185480e+00), weight_t(-9.98345649e-01), weight_t(-7.37228879e-01), weight_t(-2.31221966e+00), weight_t(-1.89037602e+00), weight_t(-2.49468210e+00), weight_t(2.01525636e-01), weight_t(-4.41935287e-01), weight_t(-6.80950932e-01), weight_t(-1.62244213e+00), weight_t(-1.88279586e+00), weight_t(4.12790040e-02), weight_t(2.38362771e-01), weight_t(-3.79497067e+00), weight_t(-3.23757705e-01), weight_t(3.05210643e-01), weight_t(-2.54376335e+00), weight_t(-1.99805980e+00), weight_t(-1.73026896e+00), weight_t(1.71788811e+00), weight_t(-3.11979719e-02), weight_t(2.24402215e-01), weight_t(-6.64539911e-01), weight_t(-1.13267071e+00), weight_t(-2.50426990e+00), weight_t(-2.00928404e+00), weight_t(-2.18404173e+00), weight_t(-1.09795414e+00), weight_t(-1.90246189e+00), weight_t(-9.57577071e-01), weight_t(-1.28604637e-01), weight_t(-7.23256224e-01), weight_t(-9.38493446e-01), weight_t(-2.73679232e+00), weight_t(-1.91949732e+00), weight_t(-1.23348044e+00), weight_t(5.16629818e-01), weight_t(8.75584674e-01), weight_t(-3.06958094e+00), weight_t(-2.84472485e-01), weight_t(-8.66966907e-01), weight_t(-2.16139021e+00), weight_t(-1.05018669e+00), weight_t(-1.13398477e+00), weight_t(-2.30614980e-01), weight_t(-1.24673655e+00), weight_t(-1.12279078e+00), weight_t(-1.76922797e+00), weight_t(-2.62334469e-01), weight_t(-1.25335717e+00), weight_t(-1.33827932e+00), weight_t(-1.28543634e+00), weight_t(-1.43133430e+00), weight_t(-1.43136249e+00), weight_t(4.12723848e-01), weight_t(-1.03803101e+00), weight_t(-1.40775005e+00), weight_t(-7.33354922e-01), weight_t(-3.21044850e-01), weight_t(-8.25105549e-01), weight_t(4.04901409e-01), weight_t(-6.99069946e-01), weight_t(-1.32845264e+00), weight_t(-1.78606880e+00), weight_t(-2.73207940e+00), weight_t(-4.84500790e-01), weight_t(-7.88797298e-01), weight_t(-1.74961474e+00), weight_t(-1.65713219e+00), weight_t(-1.02523370e+00), weight_t(-1.19356055e-02), weight_t(-1.55849800e-01), weight_t(-2.04580886e+00), weight_t(-8.65451715e-01), weight_t(-1.08110651e+00), weight_t(-1.33753285e+00), weight_t(-6.02048177e-01), weight_t(-1.74134620e+00), weight_t(-9.96752718e-01), weight_t(-1.29366565e+00), weight_t(-1.97173204e+00), weight_t(-2.63237333e+00), weight_t(-7.61028491e-01), weight_t(-3.14414438e+00), weight_t(-9.81802318e-02), weight_t(-5.48798755e-01), weight_t(-2.17161671e+00), weight_t(-6.56229884e-02), weight_t(-1.50648702e+00), weight_t(-3.22060126e+00), weight_t(1.14329332e+00), weight_t(-5.74565447e-01), weight_t(-3.18042406e+00), weight_t(-5.42325534e-02), weight_t(-1.34157694e-02), weight_t(8.79080184e-01), weight_t(-2.43329582e+00), weight_t(-1.07561615e+00), weight_t(-2.42012327e-01), weight_t(6.90665335e-01), weight_t(3.48476488e-01), weight_t(-1.59896864e+00), weight_t(-9.23271138e-01), weight_t(-7.45851559e-01), weight_t(-1.13982026e+00), weight_t(3.25045693e-02), weight_t(-1.39149305e+00), weight_t(1.71481198e-01), weight_t(-1.67874628e+00), weight_t(-7.32401472e-01) } },
    { {
{ weight_t(-6.17983123e-02), weight_t(-1.51744982e-01), weight_t(6.34236170e-03), weight_t(-2.02362489e-02), weight_t(-1.77258462e-01), weight_t(-3.66520589e-02), weight_t(-1.70786697e-01), weight_t(-1.00840845e-01), weight_t(-9.83775782e-02), weight_t(-2.58091738e-01), weight_t(-1.80105264e-01), weight_t(-1.65317883e-01), weight_t(-2.17687044e-01), weight_t(-1.89422085e-02), weight_t(3.21637577e-03), weight_t(-1.39040294e-01), weight_t(-2.13856903e-02), weight_t(-2.77152312e-02), weight_t(-9.49855655e-02), weight_t(-7.11620306e-02), weight_t(-5.70878579e-02), weight_t(-1.14183383e-01), weight_t(-1.42302825e-02), weight_t(-2.04659463e-01), weight_t(-9.65535281e-02), weight_t(3.49287455e-02), weight_t(-8.97407801e-02), weight_t(-1.30442684e-01), weight_t(-4.21062546e-02), weight_t(-1.72487257e-01), weight_t(-5.87479208e-02), weight_t(7.09135611e-02), weight_t(-9.81029206e-02), weight_t(1.17899290e-01), weight_t(-1.66866332e-01), weight_t(-1.13491198e-02), weight_t(4.81006546e-02), weight_t(7.34218819e-02), weight_t(-1.18900381e-01), weight_t(-1.38468859e-01), weight_t(-5.53139180e-02), weight_t(-2.68402829e-01), weight_t(-1.77688073e-01), weight_t(-1.80188288e-01), weight_t(-1.05809885e-01), weight_t(-8.66155375e-02), weight_t(-4.28183905e-02), weight_t(-1.32729024e-01), weight_t(-5.76408239e-02), weight_t(-7.18395384e-02), weight_t(-2.07507956e-01), weight_t(-2.37277740e-01), weight_t(-6.42133680e-02), weight_t(-1.94252519e-02), weight_t(-1.74484643e-01), weight_t(-1.16924522e-01), weight_t(-1.38536272e-01), weight_t(-1.92426904e-01), weight_t(-2.67315775e-02), weight_t(-6.82068722e-02), weight_t(-2.18239313e-01), weight_t(-1.25041094e-01), weight_t(9.72763332e-02), weight_t(-1.12790352e-01), weight_t(-9.87688566e-02), weight_t(-1.03806387e-01), weight_t(-5.32869143e-02), weight_t(-1.73981466e-01), weight_t(-2.12988191e-01), weight_t(-2.89717892e-01), weight_t(-9.30409942e-02), weight_t(-2.02076250e-01), weight_t(-1.09307524e-01), weight_t(-2.26479547e-01), weight_t(-9.83818393e-03), weight_t(-2.62391775e-01), weight_t(-4.78209047e-02), weight_t(-2.78769320e-01), weight_t(-1.43210858e-01), weight_t(-8.44104257e-02), weight_t(-1.46753020e-01), weight_t(-1.46493817e-01), weight_t(-4.33278101e-02), weight_t(-1.31680822e-01), weight_t(-1.75929691e-01), weight_t(-2.55530854e-01), weight_t(-9.05927775e-02), weight_t(-1.58217096e-01), weight_t(-1.61080487e-01), weight_t(-3.31959368e-02), weight_t(-1.13524400e-01), weight_t(-1.15314825e-01), weight_t(-1.84457098e-02), weight_t(-6.67247568e-02), weight_t(-1.30488179e-01), weight_t(-1.36818329e-01), weight_t(-8.23263109e-02), weight_t(-1.78755113e-01), weight_t(-6.94199972e-02), weight_t(-1.60804286e-01), weight_t(1.00368862e-01), weight_t(5.45628673e-02), weight_t(1.50847373e-02), weight_t(-1.80159613e-01), weight_t(-6.88345165e-02), weight_t(5.25365533e-02), weight_t(8.81335726e-02), weight_t(-1.91517378e-01), weight_t(-1.19412800e-01), weight_t(-1.32822101e-01), weight_t(-2.20038687e-01), weight_t(-5.52316964e-02), weight_t(-5.69939769e-02), weight_t(-1.75127472e-01), weight_t(-1.35971744e-01), weight_t(-1.33902921e-01), weight_t(-9.85936703e-02), weight_t(2.38025822e-02), weight_t(-6.46473205e-02), weight_t(-4.99129989e-02), weight_t(-4.77505070e-02), weight_t(-6.56876822e-02), weight_t(-5.15510294e-02), weight_t(-1.02877512e-01), weight_t(-1.23095600e-01), weight_t(-5.24114781e-02), weight_t(-6.94310891e-02), weight_t(-1.17792685e-01) }
}, { weight_t(-1.41250043e-01) } }
};

#endif