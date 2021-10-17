# Cell-free reaction kinetics modelling of second generation toehold switches 
Standard mass action kinetics to computationally evaluate the performance of toehold switches as biosensors of miRNA biomarkers. 

* Initial_CLSB_model.m :
Simulation inspired by the "initial model" in [iGEM CLSB-UK](http://2017.igem.org/Team:CLSB-UK/Model#) (2017). Describes first-generation toehold switch kinetics on miRNA binding. 
  - `Input`: Concentrations of the closed toehold switch and miRNA 
  - `Output`: Concentration of opened toehold switches upon binding to trigger miRNA
* Final_CLSB_model.m :
Simulation extending the 'initial model' above and inspired by the "final model" described in [iGEM CLSB-UK](http://2017.igem.org/Team:CLSB-UK/Model#) (2017). Includes the upstream transcription of the closed toehold switch and the downstream translation of green fluorescent protein (GFP) from the open toehold switch. 
  - `Input`: Concentrations of toehold DNA and miRNA
  - `Output`: Concentration of GFP protein translated
* Complete_model_fluorescence.m :
Generalisation of the above kinetics to second-generation toehold switches. In second generation toehold switches, there is an interaction between miRNA and a partially complementary anti-miRNA, to form a complex which interacts with the toehold switches. In addition, another difference between this model and the CLSB final model is the inclusion of a GFP maturation step following translation. 
  - `Input`: Concentrations of miRNA, anti-miRNA and toehold DNA. 
  - `Output`: Predicted fluorescence intensity (from GFP expression).
* Palaniappan2021_Cell free modelling of second generation toehold switches.xml :
Executable SBML model of the second-generation toehold switch (i.e, above 'Complete model'). Built on COPASI, but can be run on any SBML supporting platform. The input and output are the same as the MATLAB code.


Citation
------------

More information about the parameters, and the models could be found in [End-to-end computational approach to the design of RNA biosensors for miRNA biomarkers of cervical cancer](https://doi.org/10.1101/2021.07.09.451282). [Manuscript submitted]
