DROP TABLE IF EXISTS ForcedSource;


DROP TABLE IF EXISTS ObjectFullOverlap;


DROP TABLE IF EXISTS Object;


DROP TABLE IF EXISTS Source;


CREATE TABLE ForcedSource (
  deepSourceId Int64 ,
  scienceCcdExposureId Int64 ,
  psfFlux Nullable(Float32),
  psfFluxSigma Nullable(Float32),
  flagBadMeasCentroid UInt8 ,
  flagPixEdge UInt8 ,
  flagPixInterpAny UInt8 ,
  flagPixInterpCen UInt8 ,
  flagPixSaturAny UInt8 ,
  flagPixSaturCen UInt8 ,
  flagBadPsfFlux UInt8 ,
  chunkId Int32 ,
  subChunkId Int32,
  dummy Date DEFAULT '2000-01-01'
) ENGINE MergeTree(dummy, (deepSourceId), 8192) ;


CREATE TABLE ObjectFullOverlap (
  deepSourceId Int64 ,
  ra double ,
  decl double ,
  raVar Nullable(double),
  declVar Nullable(double),
  radeclCov Nullable(double),
  chunkId Int32 ,
  subChunkId Int32 ,
  u_psfFlux Nullable(double),
  u_psfFluxSigma Nullable(double),
  u_apFlux Nullable(double),
  u_apFluxSigma Nullable(double),
  u_modelFlux Nullable(double),
  u_modelFluxSigma Nullable(double),
  u_instFlux Nullable(double),
  u_instFluxSigma Nullable(double),
  u_apCorrection Nullable(double),
  u_apCorrectionSigma Nullable(double),
  u_shapeIx Nullable(double),
  u_shapeIy Nullable(double),
  u_shapeIxVar Nullable(double),
  u_shapeIyVar Nullable(double),
  u_shapeIxIyCov Nullable(double),
  u_shapeIxx Nullable(double),
  u_shapeIyy Nullable(double),
  u_shapeIxy Nullable(double),
  u_shapeIxxVar Nullable(double),
  u_shapeIyyVar Nullable(double),
  u_shapeIxyVar Nullable(double),
  u_shapeIxxIyyCov Nullable(double),
  u_shapeIxxIxyCov Nullable(double),
  u_shapeIyyIxyCov Nullable(double),
  u_extendedness Nullable(double),
  u_flagNegative Nullable(UInt8),
  u_flagBadMeasCentroid Nullable(UInt8),
  u_flagPixEdge Nullable(UInt8),
  u_flagPixInterpAny Nullable(UInt8),
  u_flagPixInterpCen Nullable(UInt8),
  u_flagPixSaturAny Nullable(UInt8),
  u_flagPixSaturCen Nullable(UInt8),
  u_flagBadPsfFlux Nullable(UInt8),
  u_flagBadApFlux Nullable(UInt8),
  u_flagBadModelFlux Nullable(UInt8),
  u_flagBadInstFlux Nullable(UInt8),
  u_flagBadCentroid Nullable(UInt8),
  u_flagBadShape Nullable(UInt8),
  g_psfFlux Nullable(double),
  g_psfFluxSigma Nullable(double),
  g_apFlux Nullable(double),
  g_apFluxSigma Nullable(double),
  g_modelFlux Nullable(double),
  g_modelFluxSigma Nullable(double),
  g_instFlux Nullable(double),
  g_instFluxSigma Nullable(double),
  g_apCorrection Nullable(double),
  g_apCorrectionSigma Nullable(double),
  g_shapeIx Nullable(double),
  g_shapeIy Nullable(double),
  g_shapeIxVar Nullable(double),
  g_shapeIyVar Nullable(double),
  g_shapeIxIyCov Nullable(double),
  g_shapeIxx Nullable(double),
  g_shapeIyy Nullable(double),
  g_shapeIxy Nullable(double),
  g_shapeIxxVar Nullable(double),
  g_shapeIyyVar Nullable(double),
  g_shapeIxyVar Nullable(double),
  g_shapeIxxIyyCov Nullable(double),
  g_shapeIxxIxyCov Nullable(double),
  g_shapeIyyIxyCov Nullable(double),
  g_extendedness Nullable(double),
  g_flagNegative Nullable(UInt8),
  g_flagBadMeasCentroid Nullable(UInt8),
  g_flagPixEdge Nullable(UInt8),
  g_flagPixInterpAny Nullable(UInt8),
  g_flagPixInterpCen Nullable(UInt8),
  g_flagPixSaturAny Nullable(UInt8),
  g_flagPixSaturCen Nullable(UInt8),
  g_flagBadPsfFlux Nullable(UInt8),
  g_flagBadApFlux Nullable(UInt8),
  g_flagBadModelFlux Nullable(UInt8),
  g_flagBadInstFlux Nullable(UInt8),
  g_flagBadCentroid Nullable(UInt8),
  g_flagBadShape Nullable(UInt8),
  r_psfFlux Nullable(double),
  r_psfFluxSigma Nullable(double),
  r_apFlux Nullable(double),
  r_apFluxSigma Nullable(double),
  r_modelFlux Nullable(double),
  r_modelFluxSigma Nullable(double),
  r_instFlux Nullable(double),
  r_instFluxSigma Nullable(double),
  r_apCorrection Nullable(double),
  r_apCorrectionSigma Nullable(double),
  r_shapeIx Nullable(double),
  r_shapeIy Nullable(double),
  r_shapeIxVar Nullable(double),
  r_shapeIyVar Nullable(double),
  r_shapeIxIyCov Nullable(double),
  r_shapeIxx Nullable(double),
  r_shapeIyy Nullable(double),
  r_shapeIxy Nullable(double),
  r_shapeIxxVar Nullable(double),
  r_shapeIyyVar Nullable(double),
  r_shapeIxyVar Nullable(double),
  r_shapeIxxIyyCov Nullable(double),
  r_shapeIxxIxyCov Nullable(double),
  r_shapeIyyIxyCov Nullable(double),
  r_extendedness Nullable(double),
  r_flagNegative Nullable(UInt8),
  r_flagBadMeasCentroid Nullable(UInt8),
  r_flagPixEdge Nullable(UInt8),
  r_flagPixInterpAny Nullable(UInt8),
  r_flagPixInterpCen Nullable(UInt8),
  r_flagPixSaturAny Nullable(UInt8),
  r_flagPixSaturCen Nullable(UInt8),
  r_flagBadPsfFlux Nullable(UInt8),
  r_flagBadApFlux Nullable(UInt8),
  r_flagBadModelFlux Nullable(UInt8),
  r_flagBadInstFlux Nullable(UInt8),
  r_flagBadCentroid Nullable(UInt8),
  r_flagBadShape Nullable(UInt8),
  i_psfFlux Nullable(double),
  i_psfFluxSigma Nullable(double),
  i_apFlux Nullable(double),
  i_apFluxSigma Nullable(double),
  i_modelFlux Nullable(double),
  i_modelFluxSigma Nullable(double),
  i_instFlux Nullable(double),
  i_instFluxSigma Nullable(double),
  i_apCorrection Nullable(double),
  i_apCorrectionSigma Nullable(double),
  i_shapeIx Nullable(double),
  i_shapeIy Nullable(double),
  i_shapeIxVar Nullable(double),
  i_shapeIyVar Nullable(double),
  i_shapeIxIyCov Nullable(double),
  i_shapeIxx Nullable(double),
  i_shapeIyy Nullable(double),
  i_shapeIxy Nullable(double),
  i_shapeIxxVar Nullable(double),
  i_shapeIyyVar Nullable(double),
  i_shapeIxyVar Nullable(double),
  i_shapeIxxIyyCov Nullable(double),
  i_shapeIxxIxyCov Nullable(double),
  i_shapeIyyIxyCov Nullable(double),
  i_extendedness Nullable(double),
  i_flagNegative Nullable(UInt8),
  i_flagBadMeasCentroid Nullable(UInt8),
  i_flagPixEdge Nullable(UInt8),
  i_flagPixInterpAny Nullable(UInt8),
  i_flagPixInterpCen Nullable(UInt8),
  i_flagPixSaturAny Nullable(UInt8),
  i_flagPixSaturCen Nullable(UInt8),
  i_flagBadPsfFlux Nullable(UInt8),
  i_flagBadApFlux Nullable(UInt8),
  i_flagBadModelFlux Nullable(UInt8),
  i_flagBadInstFlux Nullable(UInt8),
  i_flagBadCentroid Nullable(UInt8),
  i_flagBadShape Nullable(UInt8),
  z_psfFlux Nullable(double),
  z_psfFluxSigma Nullable(double),
  z_apFlux Nullable(double),
  z_apFluxSigma Nullable(double),
  z_modelFlux Nullable(double),
  z_modelFluxSigma Nullable(double),
  z_instFlux Nullable(double),
  z_instFluxSigma Nullable(double),
  z_apCorrection Nullable(double),
  z_apCorrectionSigma Nullable(double),
  z_shapeIx Nullable(double),
  z_shapeIy Nullable(double),
  z_shapeIxVar Nullable(double),
  z_shapeIyVar Nullable(double),
  z_shapeIxIyCov Nullable(double),
  z_shapeIxx Nullable(double),
  z_shapeIyy Nullable(double),
  z_shapeIxy Nullable(double),
  z_shapeIxxVar Nullable(double),
  z_shapeIyyVar Nullable(double),
  z_shapeIxyVar Nullable(double),
  z_shapeIxxIyyCov Nullable(double),
  z_shapeIxxIxyCov Nullable(double),
  z_shapeIyyIxyCov Nullable(double),
  z_extendedness Nullable(double),
  z_flagNegative Nullable(UInt8),
  z_flagBadMeasCentroid Nullable(UInt8),
  z_flagPixEdge Nullable(UInt8),
  z_flagPixInterpAny Nullable(UInt8),
  z_flagPixInterpCen Nullable(UInt8),
  z_flagPixSaturAny Nullable(UInt8),
  z_flagPixSaturCen Nullable(UInt8),
  z_flagBadPsfFlux Nullable(UInt8),
  z_flagBadApFlux Nullable(UInt8),
  z_flagBadModelFlux Nullable(UInt8),
  z_flagBadInstFlux Nullable(UInt8),
  z_flagBadCentroid Nullable(UInt8),
  z_flagBadShape Nullable(UInt8),
  y_psfFlux Nullable(double),
  y_psfFluxSigma Nullable(double),
  y_apFlux Nullable(double),
  y_apFluxSigma Nullable(double),
  y_modelFlux Nullable(double),
  y_modelFluxSigma Nullable(double),
  y_instFlux Nullable(double),
  y_instFluxSigma Nullable(double),
  y_apCorrection Nullable(double),
  y_apCorrectionSigma Nullable(double),
  y_shapeIx Nullable(double),
  y_shapeIy Nullable(double),
  y_shapeIxVar Nullable(double),
  y_shapeIyVar Nullable(double),
  y_shapeIxIyCov Nullable(double),
  y_shapeIxx Nullable(double),
  y_shapeIyy Nullable(double),
  y_shapeIxy Nullable(double),
  y_shapeIxxVar Nullable(double),
  y_shapeIyyVar Nullable(double),
  y_shapeIxyVar Nullable(double),
  y_shapeIxxIyyCov Nullable(double),
  y_shapeIxxIxyCov Nullable(double),
  y_shapeIyyIxyCov Nullable(double),
  y_extendedness Nullable(double),
  y_flagNegative Nullable(UInt8),
  y_flagBadMeasCentroid Nullable(UInt8),
  y_flagPixEdge Nullable(UInt8),
  y_flagPixInterpAny Nullable(UInt8),
  y_flagPixInterpCen Nullable(UInt8),
  y_flagPixSaturAny Nullable(UInt8),
  y_flagPixSaturCen Nullable(UInt8),
  y_flagBadPsfFlux Nullable(UInt8),
  y_flagBadApFlux Nullable(UInt8),
  y_flagBadModelFlux Nullable(UInt8),
  y_flagBadInstFlux Nullable(UInt8),
  y_flagBadCentroid Nullable(UInt8),
  y_flagBadShape Nullable(UInt8),
  dummy Date DEFAULT '2000-01-01'
) ENGINE MergeTree(dummy, (deepSourceId), 8192) ;

CREATE TABLE Object (
  deepSourceId Int64 ,
  ra double ,
  decl double ,
  raVar Nullable(double),
  declVar Nullable(double),
  radeclCov Nullable(double),
  chunkId Int32 ,
  subChunkId Int32 ,
  u_psfFlux Nullable(double),
  u_psfFluxSigma Nullable(double),
  u_apFlux Nullable(double),
  u_apFluxSigma Nullable(double),
  u_modelFlux Nullable(double),
  u_modelFluxSigma Nullable(double),
  u_instFlux Nullable(double),
  u_instFluxSigma Nullable(double),
  u_apCorrection Nullable(double),
  u_apCorrectionSigma Nullable(double),
  u_shapeIx Nullable(double),
  u_shapeIy Nullable(double),
  u_shapeIxVar Nullable(double),
  u_shapeIyVar Nullable(double),
  u_shapeIxIyCov Nullable(double),
  u_shapeIxx Nullable(double),
  u_shapeIyy Nullable(double),
  u_shapeIxy Nullable(double),
  u_shapeIxxVar Nullable(double),
  u_shapeIyyVar Nullable(double),
  u_shapeIxyVar Nullable(double),
  u_shapeIxxIyyCov Nullable(double),
  u_shapeIxxIxyCov Nullable(double),
  u_shapeIyyIxyCov Nullable(double),
  u_extendedness Nullable(double),
  u_flagNegative Nullable(UInt8),
  u_flagBadMeasCentroid Nullable(UInt8),
  u_flagPixEdge Nullable(UInt8),
  u_flagPixInterpAny Nullable(UInt8),
  u_flagPixInterpCen Nullable(UInt8),
  u_flagPixSaturAny Nullable(UInt8),
  u_flagPixSaturCen Nullable(UInt8),
  u_flagBadPsfFlux Nullable(UInt8),
  u_flagBadApFlux Nullable(UInt8),
  u_flagBadModelFlux Nullable(UInt8),
  u_flagBadInstFlux Nullable(UInt8),
  u_flagBadCentroid Nullable(UInt8),
  u_flagBadShape Nullable(UInt8),
  g_psfFlux Nullable(double),
  g_psfFluxSigma Nullable(double),
  g_apFlux Nullable(double),
  g_apFluxSigma Nullable(double),
  g_modelFlux Nullable(double),
  g_modelFluxSigma Nullable(double),
  g_instFlux Nullable(double),
  g_instFluxSigma Nullable(double),
  g_apCorrection Nullable(double),
  g_apCorrectionSigma Nullable(double),
  g_shapeIx Nullable(double),
  g_shapeIy Nullable(double),
  g_shapeIxVar Nullable(double),
  g_shapeIyVar Nullable(double),
  g_shapeIxIyCov Nullable(double),
  g_shapeIxx Nullable(double),
  g_shapeIyy Nullable(double),
  g_shapeIxy Nullable(double),
  g_shapeIxxVar Nullable(double),
  g_shapeIyyVar Nullable(double),
  g_shapeIxyVar Nullable(double),
  g_shapeIxxIyyCov Nullable(double),
  g_shapeIxxIxyCov Nullable(double),
  g_shapeIyyIxyCov Nullable(double),
  g_extendedness Nullable(double),
  g_flagNegative Nullable(UInt8),
  g_flagBadMeasCentroid Nullable(UInt8),
  g_flagPixEdge Nullable(UInt8),
  g_flagPixInterpAny Nullable(UInt8),
  g_flagPixInterpCen Nullable(UInt8),
  g_flagPixSaturAny Nullable(UInt8),
  g_flagPixSaturCen Nullable(UInt8),
  g_flagBadPsfFlux Nullable(UInt8),
  g_flagBadApFlux Nullable(UInt8),
  g_flagBadModelFlux Nullable(UInt8),
  g_flagBadInstFlux Nullable(UInt8),
  g_flagBadCentroid Nullable(UInt8),
  g_flagBadShape Nullable(UInt8),
  r_psfFlux Nullable(double),
  r_psfFluxSigma Nullable(double),
  r_apFlux Nullable(double),
  r_apFluxSigma Nullable(double),
  r_modelFlux Nullable(double),
  r_modelFluxSigma Nullable(double),
  r_instFlux Nullable(double),
  r_instFluxSigma Nullable(double),
  r_apCorrection Nullable(double),
  r_apCorrectionSigma Nullable(double),
  r_shapeIx Nullable(double),
  r_shapeIy Nullable(double),
  r_shapeIxVar Nullable(double),
  r_shapeIyVar Nullable(double),
  r_shapeIxIyCov Nullable(double),
  r_shapeIxx Nullable(double),
  r_shapeIyy Nullable(double),
  r_shapeIxy Nullable(double),
  r_shapeIxxVar Nullable(double),
  r_shapeIyyVar Nullable(double),
  r_shapeIxyVar Nullable(double),
  r_shapeIxxIyyCov Nullable(double),
  r_shapeIxxIxyCov Nullable(double),
  r_shapeIyyIxyCov Nullable(double),
  r_extendedness Nullable(double),
  r_flagNegative Nullable(UInt8),
  r_flagBadMeasCentroid Nullable(UInt8),
  r_flagPixEdge Nullable(UInt8),
  r_flagPixInterpAny Nullable(UInt8),
  r_flagPixInterpCen Nullable(UInt8),
  r_flagPixSaturAny Nullable(UInt8),
  r_flagPixSaturCen Nullable(UInt8),
  r_flagBadPsfFlux Nullable(UInt8),
  r_flagBadApFlux Nullable(UInt8),
  r_flagBadModelFlux Nullable(UInt8),
  r_flagBadInstFlux Nullable(UInt8),
  r_flagBadCentroid Nullable(UInt8),
  r_flagBadShape Nullable(UInt8),
  i_psfFlux Nullable(double),
  i_psfFluxSigma Nullable(double),
  i_apFlux Nullable(double),
  i_apFluxSigma Nullable(double),
  i_modelFlux Nullable(double),
  i_modelFluxSigma Nullable(double),
  i_instFlux Nullable(double),
  i_instFluxSigma Nullable(double),
  i_apCorrection Nullable(double),
  i_apCorrectionSigma Nullable(double),
  i_shapeIx Nullable(double),
  i_shapeIy Nullable(double),
  i_shapeIxVar Nullable(double),
  i_shapeIyVar Nullable(double),
  i_shapeIxIyCov Nullable(double),
  i_shapeIxx Nullable(double),
  i_shapeIyy Nullable(double),
  i_shapeIxy Nullable(double),
  i_shapeIxxVar Nullable(double),
  i_shapeIyyVar Nullable(double),
  i_shapeIxyVar Nullable(double),
  i_shapeIxxIyyCov Nullable(double),
  i_shapeIxxIxyCov Nullable(double),
  i_shapeIyyIxyCov Nullable(double),
  i_extendedness Nullable(double),
  i_flagNegative Nullable(UInt8),
  i_flagBadMeasCentroid Nullable(UInt8),
  i_flagPixEdge Nullable(UInt8),
  i_flagPixInterpAny Nullable(UInt8),
  i_flagPixInterpCen Nullable(UInt8),
  i_flagPixSaturAny Nullable(UInt8),
  i_flagPixSaturCen Nullable(UInt8),
  i_flagBadPsfFlux Nullable(UInt8),
  i_flagBadApFlux Nullable(UInt8),
  i_flagBadModelFlux Nullable(UInt8),
  i_flagBadInstFlux Nullable(UInt8),
  i_flagBadCentroid Nullable(UInt8),
  i_flagBadShape Nullable(UInt8),
  z_psfFlux Nullable(double),
  z_psfFluxSigma Nullable(double),
  z_apFlux Nullable(double),
  z_apFluxSigma Nullable(double),
  z_modelFlux Nullable(double),
  z_modelFluxSigma Nullable(double),
  z_instFlux Nullable(double),
  z_instFluxSigma Nullable(double),
  z_apCorrection Nullable(double),
  z_apCorrectionSigma Nullable(double),
  z_shapeIx Nullable(double),
  z_shapeIy Nullable(double),
  z_shapeIxVar Nullable(double),
  z_shapeIyVar Nullable(double),
  z_shapeIxIyCov Nullable(double),
  z_shapeIxx Nullable(double),
  z_shapeIyy Nullable(double),
  z_shapeIxy Nullable(double),
  z_shapeIxxVar Nullable(double),
  z_shapeIyyVar Nullable(double),
  z_shapeIxyVar Nullable(double),
  z_shapeIxxIyyCov Nullable(double),
  z_shapeIxxIxyCov Nullable(double),
  z_shapeIyyIxyCov Nullable(double),
  z_extendedness Nullable(double),
  z_flagNegative Nullable(UInt8),
  z_flagBadMeasCentroid Nullable(UInt8),
  z_flagPixEdge Nullable(UInt8),
  z_flagPixInterpAny Nullable(UInt8),
  z_flagPixInterpCen Nullable(UInt8),
  z_flagPixSaturAny Nullable(UInt8),
  z_flagPixSaturCen Nullable(UInt8),
  z_flagBadPsfFlux Nullable(UInt8),
  z_flagBadApFlux Nullable(UInt8),
  z_flagBadModelFlux Nullable(UInt8),
  z_flagBadInstFlux Nullable(UInt8),
  z_flagBadCentroid Nullable(UInt8),
  z_flagBadShape Nullable(UInt8),
  y_psfFlux Nullable(double),
  y_psfFluxSigma Nullable(double),
  y_apFlux Nullable(double),
  y_apFluxSigma Nullable(double),
  y_modelFlux Nullable(double),
  y_modelFluxSigma Nullable(double),
  y_instFlux Nullable(double),
  y_instFluxSigma Nullable(double),
  y_apCorrection Nullable(double),
  y_apCorrectionSigma Nullable(double),
  y_shapeIx Nullable(double),
  y_shapeIy Nullable(double),
  y_shapeIxVar Nullable(double),
  y_shapeIyVar Nullable(double),
  y_shapeIxIyCov Nullable(double),
  y_shapeIxx Nullable(double),
  y_shapeIyy Nullable(double),
  y_shapeIxy Nullable(double),
  y_shapeIxxVar Nullable(double),
  y_shapeIyyVar Nullable(double),
  y_shapeIxyVar Nullable(double),
  y_shapeIxxIyyCov Nullable(double),
  y_shapeIxxIxyCov Nullable(double),
  y_shapeIyyIxyCov Nullable(double),
  y_extendedness Nullable(double),
  y_flagNegative Nullable(UInt8),
  y_flagBadMeasCentroid Nullable(UInt8),
  y_flagPixEdge Nullable(UInt8),
  y_flagPixInterpAny Nullable(UInt8),
  y_flagPixInterpCen Nullable(UInt8),
  y_flagPixSaturAny Nullable(UInt8),
  y_flagPixSaturCen Nullable(UInt8),
  y_flagBadPsfFlux Nullable(UInt8),
  y_flagBadApFlux Nullable(UInt8),
  y_flagBadModelFlux Nullable(UInt8),
  y_flagBadInstFlux Nullable(UInt8),
  y_flagBadCentroid Nullable(UInt8),
  y_flagBadShape Nullable(UInt8),
  dummy Date DEFAULT '2000-01-01'
) ENGINE MergeTree(dummy, (deepSourceId), 8192) ;


CREATE TABLE Source (
  id Int64 ,
  coord_ra Nullable(double),
  coord_decl Nullable(double),
  coord_htmId20 Nullable(Int64),
  parent Nullable(Int64),
  flags_badcentroid UInt8 ,
  centroid_sdss_x Nullable(double),
  centroid_sdss_y Nullable(double),
  centroid_sdss_xVar Nullable(double),
  centroid_sdss_xyCov Nullable(double),
  centroid_sdss_yVar Nullable(double),
  centroid_sdss_flags UInt8 ,
  flags_pixel_edge UInt8 ,
  flags_pixel_interpolated_any UInt8 ,
  flags_pixel_interpolated_center UInt8 ,
  flags_pixel_saturated_any UInt8 ,
  flags_pixel_saturated_center UInt8 ,
  flags_pixel_cr_any UInt8 ,
  flags_pixel_cr_center UInt8 ,
  centroid_naive_x Nullable(double),
  centroid_naive_y Nullable(double),
  centroid_naive_xVar Nullable(double),
  centroid_naive_xyCov Nullable(double),
  centroid_naive_yVar Nullable(double),
  centroid_naive_flags UInt8 ,
  centroid_gaussian_x Nullable(double),
  centroid_gaussian_y Nullable(double),
  centroid_gaussian_xVar Nullable(double),
  centroid_gaussian_xyCov Nullable(double),
  centroid_gaussian_yVar Nullable(double),
  centroid_gaussian_flags UInt8 ,
  shape_sdss_Ixx Nullable(double),
  shape_sdss_Iyy Nullable(double),
  shape_sdss_Ixy Nullable(double),
  shape_sdss_IxxVar Nullable(double),
  shape_sdss_IxxIyyCov Nullable(double),
  shape_sdss_IxxIxyCov Nullable(double),
  shape_sdss_IyyVar Nullable(double),
  shape_sdss_IyyIxyCov Nullable(double),
  shape_sdss_IxyVar Nullable(double),
  shape_sdss_flags UInt8 ,
  shape_sdss_centroid_x Nullable(double),
  shape_sdss_centroid_y Nullable(double),
  shape_sdss_centroid_xVar Nullable(double),
  shape_sdss_centroid_xyCov Nullable(double),
  shape_sdss_centroid_yVar Nullable(double),
  shape_sdss_centroid_flags UInt8 ,
  shape_sdss_flags_unweightedbad UInt8 ,
  shape_sdss_flags_unweighted UInt8 ,
  shape_sdss_flags_shift UInt8 ,
  shape_sdss_flags_maxiter UInt8 ,
  flux_psf Nullable(double),
  flux_psf_err Nullable(double),
  flux_psf_flags UInt8 ,
  flux_psf_psffactor Nullable(Float32),
  flux_psf_flags_psffactor UInt8 ,
  flux_psf_flags_badcorr UInt8 ,
  flux_naive Nullable(double),
  flux_naive_err Nullable(double),
  flux_naive_flags UInt8 ,
  flux_gaussian Nullable(double),
  flux_gaussian_err Nullable(double),
  flux_gaussian_flags UInt8 ,
  flux_gaussian_psffactor Nullable(Float32),
  flux_gaussian_flags_psffactor UInt8 ,
  flux_gaussian_flags_badcorr UInt8 ,
  flux_sinc Nullable(double),
  flux_sinc_err Nullable(double),
  flux_sinc_flags UInt8 ,
  centroid_record_x Nullable(double),
  centroid_record_y Nullable(double),
  classification_extendedness Nullable(double),
  aperturecorrection Nullable(double),
  aperturecorrection_err Nullable(double),
  refFlux Nullable(double),
  refFlux_err Nullable(double),
  objectId Int64 ,
  coord_raVar Nullable(double),
  coord_radeclCov Nullable(double),
  coord_declVar Nullable(double),
  exposure_id Int64 ,
  exposure_filter_id Int32 ,
  exposure_time Nullable(Float32),
  exposure_time_mid Nullable(double),
  cluster_id Nullable(Int64),
  cluster_coord_ra Nullable(double),
  cluster_coord_decl Nullable(double),
    dummy Date DEFAULT '2000-01-01'

) ENGINE MergeTree(dummy, (id), 8192) ;
