FROM xin0214/matlab_config

MAINTAINER Li Dong <youlong1230@126.com>

RUN apt-get update
RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/webrain2018/EEG-Tools.git
ADD wb_pipeline_EEG_REST /root/matlab_script/wb_pipeline_EEG_REST
ADD wb_pipeline_EEG_calcPower /root/matlab_script/wb_pipeline_EEG_calcPower
ADD wb_pipeline_EEG_calcPower_par /root/matlab_script/wb_pipeline_EEG_calcPower_par
ADD wb_pipeline_EEG_calcEEGnetwork /root/matlab_script/wb_pipeline_EEG_calcEEGnetwork
ADD wb_pipeline_EEG_calcBasicNetIndices /root/matlab_script/wb_pipeline_EEG_calcBasicNetIndices
ADD wb_pipeline_EEG_calcERP /root/matlab_script/wb_pipeline_EEG_calcERP
ADD wb_pipeline_EEG_Mark /root/matlab_script/wb_pipeline_EEG_Mark
ADD wb_pipeline_EEG_runICA /root/matlab_script/wb_pipeline_EEG_runICA
ADD wb_pipeline_EEG_calcLeadfield_standardBEM /root/matlab_script/wb_pipeline_EEG_calcLeadfield_standardBEM
ADD wb_pipeline_EEG_prepro /root/matlab_script/wb_pipeline_EEG_prepro
ADD wb_pipeline_EEG_QA /root/matlab_script/wb_pipeline_EEG_QA

ADD avg152t1.mat /root/matlab_script/avg152t1.mat
ADD fv_training_MARA.mat /root/matlab_script/fv_training_MARA.mat
ADD helio.mat /root/matlab_script/helio.mat
ADD inv_matrix_icbm152.mat /root/matlab_script/inv_matrix_icbm152.mat
ADD loreta_ind.mat /root/matlab_script/loreta_ind.mat
ADD resample_matrix.mat /root/matlab_script/resample_matrix.mat.mat
ADD standard_bem.mat /root/matlab_script/standard_bem.mat
ADD standard_BESA.mat /root/matlab_script/standard_BESA.mat.mat
ADD standard_SCCN.mat /root/matlab_script/standard_SCCN.mat
ADD standard_vol.mat /root/matlab_script/standard_vol.mat
ADD standard_vol_SCCN.mat /root/matlab_script/standard_vol_SCCN.mat
ADD TemplateRed254.mat /root/matlab_script/TemplateRed254.mat
ADD TemplateYellow254.mat /root/matlab_script/TemplateYellow254.mat

RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script
