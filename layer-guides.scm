(script-fu-register "script-fu-layer-guides"
        "<Image>/Image/Guides/_Layer Boundary Guides"

        "Just make Guides around a layer selected."

        "(c) Sengsu Iun <cieltero(at)gmail(dot)com>"
        "Published under GPL version 3"
        "May 17, 2017"
        "*"

        SF-IMAGE "Image" 0
        SF-DRAWABLE "Drawable" 0
)

(define
  (script-fu-layer-guides
   image
   drawable)

  (gimp-image-undo-group-start image)

  (let* (
	(imagewidth (car (gimp-image-width image)))
	(imageheight (car (gimp-image-height image)))
	(layer (car (gimp-image-get-active-layer image)))
         (width (car (gimp-drawable-width layer)))
         (height (car (gimp-drawable-height layer)))
         (posx (car (gimp-drawable-offsets layer)))
	 (posx2 (+ posx width))
	 (posx2 (if (< imagewidth posx2) imagewidth posx2))
	 (posx (if (> 0 posx) 0 posx))
         (posy (cadr (gimp-drawable-offsets layer)))
	 (posy2 (+ posy height))
	 (posy2 (if (< imageheight posy2) imageheight posy2))
	 (posy (if (> 0 posy) 0 posy))
	 )
    
    (gimp-image-add-vguide image posx)
    (gimp-image-add-vguide image posx2)
    (gimp-image-add-hguide image posy)
    (gimp-image-add-hguide image posy2)
  )
  

  (gimp-image-undo-group-end image)
  (gimp-displays-flush))
