# Cell-free reaction kinetics modelling of second generation toehold switches 
Standard mass action kinetics to computationally evaluate the performance of toehold switches as biosensors of miRNA biomarkers. 

* Initial_CLSB_model.m :
Simulation inspired by the "initial model" described in [iGEM CLSB-UK](http://2017.igem.org/Team:CLSB-UK/Model#) (2017) 
* Final_CLSB_model.m :
Simulation extending the 'initial model' above and inspired by the "final model" described in [iGEM CLSB-UK](http://2017.igem.org/Team:CLSB-UK/Model#) (2017) 
* Complete_model_fluorescence.m :
Generalisation of kinetics to second generation toehold switches. Here, an upstream reaction between miRNA biomarker and  synthetic anti-miRNA with partial complementarity to the miRNA biomarker, and a downstream reaction accounting for the GFP maturation, were added to the 'final model' above.
* Palaniappan2021_Cell free modelling of second generation toehold switches.xml :
Executable SBML of the above 'Complete model.' 

Usage
------------
* Initial_CLSB_model.m :
The model describes the opening of a toehold switch on miRNA binding. On giving the concentrations of the closed toehold switch and miRNA as input, its opening on interaction between miRNA and toehold can be visualised quantitatively.
* Final_CLSB_model.m :
As an extension of the initial model, this model includes the upstream transcription of the closed toehold switch and the downstream translation of green fluorescent protein (GFP) from the open toehold switch. For input, the concentrations of toehold DNA and miRNA are required, and the output observable is the concentration of GFP protein translated.
* Complete_model_fluorescence.m :
While the above CLSB models simulate the first generation toehold switches, the Complete_model_fluorescence.m simulates the reactions in a second generation toehold switch. In second generation toehold switches, there is an interaction between miRNA and a partially complementary anti-miRNA, to form a complex which interacts with the toehold switches. In addition, another difference between this model and the CLSB final model is the inclusion of a GFP maturation step following translation. The model as input requires concentrations of miRNA, anti-miRNA and toehold DNA. The observable output is the predicted fluorescence intensity from the GFP concentration. 
* Palaniappan2021_Cell free modelling of second generation toehold switches.xml :
This is an executable SBML model for the second generation toehold switch, built on COPASI, but can be run on any SBML supporting platform. The input and output are the same as the MATLAB code.


Citation
------------

More information about the parameters, and the models could be found in [End-to-end computational approach to the design of RNA biosensors for miRNA biomarkers of cervical cancer](https://doi.org/10.1101/2021.07.09.451282). [Manuscript submitted]
