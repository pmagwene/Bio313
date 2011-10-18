#
# convert between numerical arrays and PIL image memories
#
# fredrik lundh, october 1998
#
# fredrik@pythonware.com
# http://www.pythonware.com
#

import numpy as np
import Image

def image2array(im):
    if im.mode not in ("L", "F"):
        raise ValueError, "can only convert single-layer images"
    if im.mode == "L":
        a = np.fromstring(im.tostring(), np.uint8)
    else:
        a = np.fromstring(im.tostring(), np.float32)
    a.shape = im.size[1], im.size[0]
    return a

def array2image(a):
    if a.dtype == np.uint8:
        mode = "L"
    elif a.dtype == np.float32:
        mode = "F"
    else:
        raise ValueError, "unsupported image mode"
    return Image.fromstring(mode, (a.shape[1], a.shape[0]), a.tostring())