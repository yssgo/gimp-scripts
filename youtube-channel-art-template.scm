(script-fu-register "script-fu-youtube-channel-art-template"
        "<Image>/File/Create/Youtube Channel Art Template"
        "Create Youtube Channel Art Template"
        "(c) Sengsu Iun <cieltero(at)gmail(dot)com>"
        "Published under GPL version 3"
        "August 10, 2017"
        ""
)

(define
  (script-fu-youtube-channel-art-template)
  (let* (
    (newimage (car (gimp-image-new 2560 1440 RGB)))
    (gimp-image-undo-disable newimage)  
    (newlayer (car(gimp-layer-new newimage 2560 1440 RGBA-IMAGE "background" 100 NORMAL-MODE)))
    )
    (gimp-image-insert-layer newimage newlayer 0 0)
    (gimp-image-set-active-layer newimage newlayer)
    (gimp-edit-fill newlayer BG-IMAGE-FILL)
    (gimp-image-add-vguide newimage 507)
    (gimp-image-add-vguide newimage 2053)
    (gimp-image-add-hguide newimage 509)
    (gimp-image-add-hguide newimage 932)
    (gimp-display-new newimage)
    (gimp-image-undo-enable newimage)
  )
)


