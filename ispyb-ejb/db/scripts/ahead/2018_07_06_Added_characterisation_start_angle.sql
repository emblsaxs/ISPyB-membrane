USE `pydb`;

INSERT INTO SchemaStatus (scriptName, schemaStatus) VALUES ('2018_07_06_Added_characterisation_start_angle.sql', 'ONGOING');

USE `pydb`;
CREATE 
     OR REPLACE ALGORITHM = MERGE 
    DEFINER = `pxadmin`@`%` 
    SQL SECURITY DEFINER
VIEW `pydb`.`v_datacollection_summary` AS
    SELECT 
        `pydb`.`DataCollectionGroup`.`dataCollectionGroupId` AS `DataCollectionGroup_dataCollectionGroupId`,
        `pydb`.`DataCollectionGroup`.`blSampleId` AS `DataCollectionGroup_blSampleId`,
        `pydb`.`DataCollectionGroup`.`sessionId` AS `DataCollectionGroup_sessionId`,
        `pydb`.`DataCollectionGroup`.`workflowId` AS `DataCollectionGroup_workflowId`,
        `pydb`.`DataCollectionGroup`.`experimentType` AS `DataCollectionGroup_experimentType`,
        `pydb`.`DataCollectionGroup`.`startTime` AS `DataCollectionGroup_startTime`,
        `pydb`.`DataCollectionGroup`.`endTime` AS `DataCollectionGroup_endTime`,
        `pydb`.`DataCollectionGroup`.`comments` AS `DataCollectionGroup_comments`,
        `pydb`.`DataCollectionGroup`.`actualSampleBarcode` AS `DataCollectionGroup_actualSampleBarcode`,
        `pydb`.`DataCollectionGroup`.`xtalSnapshotFullPath` AS `DataCollectionGroup_xtalSnapshotFullPath`,
        `pydb`.`DataCollectionGroup`.`crystalClass` AS `DataCollectionGroup_crystalClass`,
        `pydb`.`BLSample`.`blSampleId` AS `BLSample_blSampleId`,
        `pydb`.`BLSample`.`crystalId` AS `BLSample_crystalId`,
        `pydb`.`BLSample`.`name` AS `BLSample_name`,
        `pydb`.`BLSample`.`code` AS `BLSample_code`,
        `pydb`.`BLSample`.`location` AS `BLSample_location`,
        `pydb`.`BLSample`.`blSampleStatus` AS `BLSample_blSampleStatus`,
        `pydb`.`BLSample`.`comments` AS `BLSample_comments`,
        `pydb`.`Container`.`containerId` AS `Container_containerId`,
        `pydb`.`BLSession`.`sessionId` AS `BLSession_sessionId`,
        `pydb`.`BLSession`.`proposalId` AS `BLSession_proposalId`,
        `pydb`.`BLSession`.`protectedData` AS `BLSession_protectedData`,
        `pydb`.`Dewar`.`dewarId` AS `Dewar_dewarId`,
        `pydb`.`Dewar`.`code` AS `Dewar_code`,
        `pydb`.`Dewar`.`storageLocation` AS `Dewar_storageLocation`,
        `pydb`.`Container`.`containerType` AS `Container_containerType`,
        `pydb`.`Container`.`code` AS `Container_code`,
        `pydb`.`Container`.`capacity` AS `Container_capacity`,
        `pydb`.`Container`.`beamlineLocation` AS `Container_beamlineLocation`,
        `pydb`.`Container`.`sampleChangerLocation` AS `Container_sampleChangerLocation`,
        `pydb`.`Protein`.`proteinId` AS `Protein_proteinId`,
        `pydb`.`Protein`.`name` AS `Protein_name`,
        `pydb`.`Protein`.`acronym` AS `Protein_acronym`,
        `pydb`.`DataCollection`.`dataCollectionId` AS `DataCollection_dataCollectionId`,
        `pydb`.`DataCollection`.`dataCollectionGroupId` AS `DataCollection_dataCollectionGroupId`,
        `pydb`.`DataCollection`.`startTime` AS `DataCollection_startTime`,
        `pydb`.`DataCollection`.`endTime` AS `DataCollection_endTime`,
        `pydb`.`DataCollection`.`runStatus` AS `DataCollection_runStatus`,
        `pydb`.`DataCollection`.`numberOfImages` AS `DataCollection_numberOfImages`,
        `pydb`.`DataCollection`.`startImageNumber` AS `DataCollection_startImageNumber`,
        `pydb`.`DataCollection`.`numberOfPasses` AS `DataCollection_numberOfPasses`,
        `pydb`.`DataCollection`.`exposureTime` AS `DataCollection_exposureTime`,
        `pydb`.`DataCollection`.`imageDirectory` AS `DataCollection_imageDirectory`,
        `pydb`.`DataCollection`.`wavelength` AS `DataCollection_wavelength`,
        `pydb`.`DataCollection`.`resolution` AS `DataCollection_resolution`,
        `pydb`.`DataCollection`.`detectorDistance` AS `DataCollection_detectorDistance`,
        `pydb`.`DataCollection`.`xBeam` AS `DataCollection_xBeam`,
        `pydb`.`DataCollection`.`transmission` AS `transmission`,
        `pydb`.`DataCollection`.`yBeam` AS `DataCollection_yBeam`,
        `pydb`.`DataCollection`.`imagePrefix` AS `DataCollection_imagePrefix`,
        `pydb`.`DataCollection`.`comments` AS `DataCollection_comments`,
        `pydb`.`DataCollection`.`xtalSnapshotFullPath1` AS `DataCollection_xtalSnapshotFullPath1`,
        `pydb`.`DataCollection`.`xtalSnapshotFullPath2` AS `DataCollection_xtalSnapshotFullPath2`,
        `pydb`.`DataCollection`.`xtalSnapshotFullPath3` AS `DataCollection_xtalSnapshotFullPath3`,
        `pydb`.`DataCollection`.`xtalSnapshotFullPath4` AS `DataCollection_xtalSnapshotFullPath4`,
        `pydb`.`DataCollection`.`phiStart` AS `DataCollection_phiStart`,
        `pydb`.`DataCollection`.`kappaStart` AS `DataCollection_kappaStart`,
        `pydb`.`DataCollection`.`omegaStart` AS `DataCollection_omegaStart`,
        `pydb`.`DataCollection`.`flux` AS `DataCollection_flux`,
        `pydb`.`DataCollection`.`flux_end` AS `DataCollection_flux_end`,
        `pydb`.`DataCollection`.`resolutionAtCorner` AS `DataCollection_resolutionAtCorner`,
        `pydb`.`DataCollection`.`bestWilsonPlotPath` AS `DataCollection_bestWilsonPlotPath`,
        `pydb`.`DataCollection`.`dataCollectionNumber` AS `DataCollection_dataCollectionNumber`,
        `pydb`.`DataCollection`.`axisRange` AS `DataCollection_axisRange`,
        `pydb`.`DataCollection`.`axisStart` AS `DataCollection_axisStart`,
        `pydb`.`DataCollection`.`axisEnd` AS `DataCollection_axisEnd`,
        `pydb`.`DataCollection`.`rotationAxis` AS `DataCollection_rotationAxis`,
        `pydb`.`DataCollection`.`undulatorGap1` AS `DataCollection_undulatorGap1`,
        `pydb`.`DataCollection`.`undulatorGap2` AS `DataCollection_undulatorGap2`,
        `pydb`.`DataCollection`.`undulatorGap3` AS `DataCollection_undulatorGap3`,
        `pydb`.`DataCollection`.`beamSizeAtSampleX` AS `beamSizeAtSampleX`,
        `pydb`.`DataCollection`.`beamSizeAtSampleY` AS `beamSizeAtSampleY`,
        `pydb`.`DataCollection`.`slitGapVertical` AS `DataCollection_slitGapVertical`,
        `pydb`.`DataCollection`.`slitGapHorizontal` AS `DataCollection_slitGapHorizontal`,
        `pydb`.`DataCollection`.`beamShape` AS `DataCollection_beamShape`,
        `pydb`.`DataCollection`.`voltage` AS `DataCollection_voltage`,
        `pydb`.`DataCollection`.`xBeamPix` AS `DataCollection_xBeamPix`,
        `pydb`.`Workflow`.`workflowTitle` AS `Workflow_workflowTitle`,
        `pydb`.`Workflow`.`workflowType` AS `Workflow_workflowType`,
        `pydb`.`Workflow`.`status` AS `Workflow_status`,
        `pydb`.`Workflow`.`workflowId` AS `Workflow_workflowId`,
        `v_datacollection_summary_autoprocintegration`.`AutoProcIntegration_dataCollectionId` AS `AutoProcIntegration_dataCollectionId`,
        `v_datacollection_summary_autoprocintegration`.`autoProcScalingId` AS `autoProcScalingId`,
        `v_datacollection_summary_autoprocintegration`.`cell_a` AS `cell_a`,
        `v_datacollection_summary_autoprocintegration`.`cell_b` AS `cell_b`,
        `v_datacollection_summary_autoprocintegration`.`cell_c` AS `cell_c`,
        `v_datacollection_summary_autoprocintegration`.`cell_alpha` AS `cell_alpha`,
        `v_datacollection_summary_autoprocintegration`.`cell_beta` AS `cell_beta`,
        `v_datacollection_summary_autoprocintegration`.`cell_gamma` AS `cell_gamma`,
        `v_datacollection_summary_autoprocintegration`.`anomalous` AS `anomalous`,
        `v_datacollection_summary_autoprocintegration`.`scalingStatisticsType` AS `scalingStatisticsType`,
        `v_datacollection_summary_autoprocintegration`.`resolutionLimitHigh` AS `resolutionLimitHigh`,
        `v_datacollection_summary_autoprocintegration`.`resolutionLimitLow` AS `resolutionLimitLow`,
        `v_datacollection_summary_autoprocintegration`.`completeness` AS `completeness`,
        `v_datacollection_summary_autoprocintegration`.`AutoProc_spaceGroup` AS `AutoProc_spaceGroup`,
        `v_datacollection_summary_autoprocintegration`.`autoProcId` AS `autoProcId`,
        `v_datacollection_summary_autoprocintegration`.`rMerge` AS `rMerge`,
        `v_datacollection_summary_autoprocintegration`.`AutoProcIntegration_autoProcIntegrationId` AS `AutoProcIntegration_autoProcIntegrationId`,
        `v_datacollection_summary_autoprocintegration`.`v_datacollection_summary_autoprocintegration_processingPrograms` AS `AutoProcProgram_processingPrograms`,
        `v_datacollection_summary_autoprocintegration`.`v_datacollection_summary_autoprocintegration_processingStatus` AS `AutoProcProgram_processingStatus`,
        `v_datacollection_summary_autoprocintegration`.`AutoProcProgram_autoProcProgramId` AS `AutoProcProgram_autoProcProgramId`,
        `v_datacollection_summary_screening`.`Screening_screeningId` AS `Screening_screeningId`,
        `v_datacollection_summary_screening`.`Screening_dataCollectionId` AS `Screening_dataCollectionId`,
        `v_datacollection_summary_screening`.`Screening_dataCollectionGroupId` AS `Screening_dataCollectionGroupId`,
        `v_datacollection_summary_screening`.`ScreeningOutput_strategySuccess` AS `ScreeningOutput_strategySuccess`,
        `v_datacollection_summary_screening`.`ScreeningOutput_indexingSuccess` AS `ScreeningOutput_indexingSuccess`,
        `v_datacollection_summary_screening`.`ScreeningOutput_rankingResolution` AS `ScreeningOutput_rankingResolution`,
        `v_datacollection_summary_screening`.`ScreeningOutput_mosaicity` AS `ScreeningOutput_mosaicity`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_spaceGroup` AS `ScreeningOutputLattice_spaceGroup`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_unitCell_a` AS `ScreeningOutputLattice_unitCell_a`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_unitCell_b` AS `ScreeningOutputLattice_unitCell_b`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_unitCell_c` AS `ScreeningOutputLattice_unitCell_c`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_unitCell_alpha` AS `ScreeningOutputLattice_unitCell_alpha`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_unitCell_beta` AS `ScreeningOutputLattice_unitCell_beta`,
        `v_datacollection_summary_screening`.`ScreeningOutputLattice_unitCell_gamma` AS `ScreeningOutputLattice_unitCell_gamma`,
        `v_datacollection_summary_screening`.`ScreeningOutput_totalExposureTime` AS `ScreeningOutput_totalExposureTime`,
        `v_datacollection_summary_screening`.`ScreeningOutput_totalRotationRange` AS `ScreeningOutput_totalRotationRange`,
        `v_datacollection_summary_screening`.`ScreeningOutput_totalNumberOfImages` AS `ScreeningOutput_totalNumberOfImages`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_exposureTime` AS `ScreeningStrategySubWedge_exposureTime`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_transmission` AS `ScreeningStrategySubWedge_transmission`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_oscillationRange` AS `ScreeningStrategySubWedge_oscillationRange`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_numberOfImages` AS `ScreeningStrategySubWedge_numberOfImages`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_multiplicity` AS `ScreeningStrategySubWedge_multiplicity`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_completeness` AS `ScreeningStrategySubWedge_completeness`,
        `v_datacollection_summary_screening`.`ScreeningStrategySubWedge_axisStart` AS `ScreeningStrategySubWedge_axisStart`,
        `pydb`.`Shipping`.`shippingId` AS `Shipping_shippingId`,
        `pydb`.`Shipping`.`shippingName` AS `Shipping_shippingName`,
        `pydb`.`Shipping`.`shippingStatus` AS `Shipping_shippingStatus`,
        `pydb`.`DiffractionPlan`.`diffractionPlanId` AS `diffractionPlanId`,
        `pydb`.`DiffractionPlan`.`experimentKind` AS `experimentKind`,
        `pydb`.`DiffractionPlan`.`observedResolution` AS `observedResolution`,
        `pydb`.`DiffractionPlan`.`minimalResolution` AS `minimalResolution`,
        `pydb`.`DiffractionPlan`.`exposureTime` AS `exposureTime`,
        `pydb`.`DiffractionPlan`.`oscillationRange` AS `oscillationRange`,
        `pydb`.`DiffractionPlan`.`maximalResolution` AS `maximalResolution`,
        `pydb`.`DiffractionPlan`.`screeningResolution` AS `screeningResolution`,
        `pydb`.`DiffractionPlan`.`radiationSensitivity` AS `radiationSensitivity`,
        `pydb`.`DiffractionPlan`.`anomalousScatterer` AS `anomalousScatterer`,
        `pydb`.`DiffractionPlan`.`preferredBeamSizeX` AS `preferredBeamSizeX`,
        `pydb`.`DiffractionPlan`.`preferredBeamSizeY` AS `preferredBeamSizeY`,
        `pydb`.`DiffractionPlan`.`preferredBeamDiameter` AS `preferredBeamDiameter`,
        `pydb`.`DiffractionPlan`.`comments` AS `DiffractipnPlan_comments`,
        `pydb`.`DiffractionPlan`.`aimedCompleteness` AS `aimedCompleteness`,
        `pydb`.`DiffractionPlan`.`aimedIOverSigmaAtHighestRes` AS `aimedIOverSigmaAtHighestRes`,
        `pydb`.`DiffractionPlan`.`aimedMultiplicity` AS `aimedMultiplicity`,
        `pydb`.`DiffractionPlan`.`aimedResolution` AS `aimedResolution`,
        `pydb`.`DiffractionPlan`.`anomalousData` AS `anomalousData`,
        `pydb`.`DiffractionPlan`.`complexity` AS `complexity`,
        `pydb`.`DiffractionPlan`.`estimateRadiationDamage` AS `estimateRadiationDamage`,
        `pydb`.`DiffractionPlan`.`forcedSpaceGroup` AS `forcedSpaceGroup`,
        `pydb`.`DiffractionPlan`.`requiredCompleteness` AS `requiredCompleteness`,
        `pydb`.`DiffractionPlan`.`requiredMultiplicity` AS `requiredMultiplicity`,
        `pydb`.`DiffractionPlan`.`requiredResolution` AS `requiredResolution`,
        `pydb`.`DiffractionPlan`.`strategyOption` AS `strategyOption`,
        `pydb`.`DiffractionPlan`.`kappaStrategyOption` AS `kappaStrategyOption`,
        `pydb`.`DiffractionPlan`.`numberOfPositions` AS `numberOfPositions`,
        `pydb`.`DiffractionPlan`.`minDimAccrossSpindleAxis` AS `minDimAccrossSpindleAxis`,
        `pydb`.`DiffractionPlan`.`maxDimAccrossSpindleAxis` AS `maxDimAccrossSpindleAxis`,
        `pydb`.`DiffractionPlan`.`radiationSensitivityBeta` AS `radiationSensitivityBeta`,
        `pydb`.`DiffractionPlan`.`radiationSensitivityGamma` AS `radiationSensitivityGamma`,
        `pydb`.`DiffractionPlan`.`minOscWidth` AS `minOscWidth`,
        `pydb`.`Detector`.`detectorType` AS `Detector_detectorType`,
        `pydb`.`Detector`.`detectorManufacturer` AS `Detector_detectorManufacturer`,
        `pydb`.`Detector`.`detectorModel` AS `Detector_detectorModel`,
        `pydb`.`Detector`.`detectorPixelSizeHorizontal` AS `Detector_detectorPixelSizeHorizontal`,
        `pydb`.`Detector`.`detectorPixelSizeVertical` AS `Detector_detectorPixelSizeVertical`,
        `pydb`.`Detector`.`detectorSerialNumber` AS `Detector_detectorSerialNumber`,
        `pydb`.`Detector`.`detectorDistanceMin` AS `Detector_detectorDistanceMin`,
        `pydb`.`Detector`.`detectorDistanceMax` AS `Detector_detectorDistanceMax`,
        `pydb`.`Detector`.`trustedPixelValueRangeLower` AS `Detector_trustedPixelValueRangeLower`,
        `pydb`.`Detector`.`trustedPixelValueRangeUpper` AS `Detector_trustedPixelValueRangeUpper`,
        `pydb`.`Detector`.`sensorThickness` AS `Detector_sensorThickness`,
        `pydb`.`Detector`.`overload` AS `Detector_overload`,
        `pydb`.`Detector`.`XGeoCorr` AS `Detector_XGeoCorr`,
        `pydb`.`Detector`.`YGeoCorr` AS `Detector_YGeoCorr`,
        `pydb`.`Detector`.`detectorMode` AS `Detector_detectorMode`,
        `pydb`.`BeamLineSetup`.`undulatorType1` AS `BeamLineSetup_undulatorType1`,
        `pydb`.`BeamLineSetup`.`undulatorType2` AS `BeamLineSetup_undulatorType2`,
        `pydb`.`BeamLineSetup`.`undulatorType3` AS `BeamLineSetup_undulatorType3`,
        `pydb`.`BeamLineSetup`.`synchrotronName` AS `BeamLineSetup_synchrotronName`,
        `pydb`.`BeamLineSetup`.`synchrotronMode` AS `BeamLineSetup_synchrotronMode`,
        `pydb`.`BeamLineSetup`.`polarisation` AS `BeamLineSetup_polarisation`,
        `pydb`.`BeamLineSetup`.`focusingOptic` AS `BeamLineSetup_focusingOptic`,
        `pydb`.`BeamLineSetup`.`beamDivergenceHorizontal` AS `BeamLineSetup_beamDivergenceHorizontal`,
        `pydb`.`BeamLineSetup`.`beamDivergenceVertical` AS `BeamLineSetup_beamDivergenceVertical`,
        `pydb`.`BeamLineSetup`.`monochromatorType` AS `BeamLineSetup_monochromatorType`
    FROM
        ((((((((((((((`pydb`.`DataCollectionGroup`
        LEFT JOIN `pydb`.`DataCollection` ON (((`pydb`.`DataCollection`.`dataCollectionGroupId` = `pydb`.`DataCollectionGroup`.`dataCollectionGroupId`)
            AND (`pydb`.`DataCollection`.`dataCollectionId` = (SELECT 
                MAX(`dc2`.`dataCollectionId`)
            FROM
                `pydb`.`DataCollection` `dc2`
            WHERE
                (`dc2`.`dataCollectionGroupId` = `pydb`.`DataCollectionGroup`.`dataCollectionGroupId`))))))
        LEFT JOIN `pydb`.`BLSession` ON ((`pydb`.`BLSession`.`sessionId` = `pydb`.`DataCollectionGroup`.`sessionId`)))
        LEFT JOIN `pydb`.`BeamLineSetup` ON ((`pydb`.`BeamLineSetup`.`beamLineSetupId` = `pydb`.`BLSession`.`beamLineSetupId`)))
        LEFT JOIN `pydb`.`Detector` ON ((`pydb`.`Detector`.`detectorId` = `pydb`.`DataCollection`.`detectorId`)))
        LEFT JOIN `pydb`.`BLSample` ON ((`pydb`.`BLSample`.`blSampleId` = `pydb`.`DataCollectionGroup`.`blSampleId`)))
        LEFT JOIN `pydb`.`DiffractionPlan` ON ((`pydb`.`DiffractionPlan`.`diffractionPlanId` = `pydb`.`BLSample`.`diffractionPlanId`)))
        LEFT JOIN `pydb`.`Container` ON ((`pydb`.`Container`.`containerId` = `pydb`.`BLSample`.`containerId`)))
        LEFT JOIN `pydb`.`Dewar` ON ((`pydb`.`Container`.`dewarId` = `pydb`.`Dewar`.`dewarId`)))
        LEFT JOIN `pydb`.`Shipping` ON ((`pydb`.`Shipping`.`shippingId` = `pydb`.`Dewar`.`shippingId`)))
        LEFT JOIN `pydb`.`Crystal` ON ((`pydb`.`Crystal`.`crystalId` = `pydb`.`BLSample`.`crystalId`)))
        LEFT JOIN `pydb`.`Protein` ON ((`pydb`.`Protein`.`proteinId` = `pydb`.`Crystal`.`proteinId`)))
        LEFT JOIN `pydb`.`Workflow` ON ((`pydb`.`DataCollectionGroup`.`workflowId` = `pydb`.`Workflow`.`workflowId`)))
        LEFT JOIN `pydb`.`v_datacollection_summary_autoprocintegration` ON ((`v_datacollection_summary_autoprocintegration`.`AutoProcIntegration_dataCollectionId` = `pydb`.`DataCollection`.`dataCollectionId`)))
        LEFT JOIN `pydb`.`v_datacollection_summary_screening` ON ((`v_datacollection_summary_screening`.`Screening_dataCollectionGroupId` = `pydb`.`DataCollectionGroup`.`dataCollectionGroupId`)));


UPDATE SchemaStatus SET schemaStatus = 'DONE' WHERE scriptName = '2018_07_06_Added_characterisation_start_angle.sql';