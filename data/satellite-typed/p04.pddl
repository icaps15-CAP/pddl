(DEFINE (PROBLEM SATELLITE-TYPED-4) (:DOMAIN SATELLITE-TYPED)
 (:OBJECTS PHENOMENON9 - DIRECTION PHENOMENON8 - DIRECTION STAR7 - DIRECTION
  STAR6 - DIRECTION PLANET5 - DIRECTION STAR4 - DIRECTION PLANET3 - DIRECTION
  STAR2 - DIRECTION STAR0 - DIRECTION GROUNDSTATION1 - DIRECTION THERMOGRAPH2 -
  MODE INFRARED1 - MODE INFRARED0 - MODE INSTRUMENT2 - INSTRUMENT INSTRUMENT1 -
  INSTRUMENT SATELLITE1 - SATELLITE INSTRUMENT0 - INSTRUMENT SATELLITE0 -
  SATELLITE)
 (:INIT (POINTING SATELLITE1 STAR0) (POWER_AVAIL SATELLITE1)
  (ON_BOARD INSTRUMENT2 SATELLITE1) (ON_BOARD INSTRUMENT1 SATELLITE1)
  (CALIBRATION_TARGET INSTRUMENT2 STAR2) (SUPPORTS INSTRUMENT2 INFRARED1)
  (SUPPORTS INSTRUMENT2 THERMOGRAPH2) (CALIBRATION_TARGET INSTRUMENT1 STAR2)
  (SUPPORTS INSTRUMENT1 INFRARED1) (SUPPORTS INSTRUMENT1 THERMOGRAPH2)
  (SUPPORTS INSTRUMENT1 INFRARED0) (POINTING SATELLITE0 STAR6)
  (POWER_AVAIL SATELLITE0) (ON_BOARD INSTRUMENT0 SATELLITE0)
  (CALIBRATION_TARGET INSTRUMENT0 STAR0) (SUPPORTS INSTRUMENT0 INFRARED0)
  (SUPPORTS INSTRUMENT0 THERMOGRAPH2))
 (:GOAL
  (AND (POINTING SATELLITE1 PLANET5) (HAVE_IMAGE PLANET3 INFRARED1)
       (HAVE_IMAGE STAR4 INFRARED1) (HAVE_IMAGE PLANET5 THERMOGRAPH2)
       (HAVE_IMAGE STAR6 INFRARED1) (HAVE_IMAGE STAR7 INFRARED0)
       (HAVE_IMAGE PHENOMENON8 THERMOGRAPH2)
       (HAVE_IMAGE PHENOMENON9 INFRARED0))))