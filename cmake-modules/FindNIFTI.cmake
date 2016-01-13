FIND_PATH(NIFTI_INCLUDE_DIR nifti1_io.h /usr/include /usr/local/include /usr/include/nifti /usr/local/include/nifti)

FIND_LIBRARY(NIFTI_LIBRARY NAMES niftiio PATHS /usr/lib /usr/local/lib )

IF (NIFTI_INCLUDE_DIR AND NIFTI_LIBRARY)
   SET(NIFTI_FOUND TRUE)
ENDIF (NIFTI_INCLUDE_DIR AND NIFTI_LIBRARY)


IF (NIFTI_FOUND)
   IF (NOT NIFTI_FIND_QUIETLY)
      MESSAGE(STATUS "Found NIfTI-1 headers: ${NIFTI_INCLUDE_DIR}")
      MESSAGE(STATUS "Found NIfTI-1 library: ${NIFTI_LIBRARY}")
   ENDIF (NOT NIFTI_FIND_QUIETLY)
ELSE (NIFTI_FOUND)
   IF (NIFTI_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Cound not find NIfTI-1")
   ENDIF (NIFTI_FIND_REQUIRED)
ENDIF (NIFTI_FOUND)
