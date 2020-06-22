"

let DIR = expand("%:p:h")
let BACK = "\\.."
let BUILD_FILE = "\\build.bat"
let MAKE_FILE = "\\Makefile"

if !executable("cl")
    echoerr('cl er ikke i path, husk å kjør vcvarsall!')
endif

" Check for Build.bat or Makefile in same dir
if filereadable(DIR . BUILD_FILE)
    let CPP_MAKE_FILE = DIR . BUILD_FILE
elseif filereadable(DIR . MAKE_FILE)
    let CPP_MAKE_FILE = "make " . DIR . MAKE_FILE

" Check for Build.bat or Makefile in directory above
elseif filereadable(DIR . BACK . BUILD_FILE)
    let CPP_MAKE_FILE = DIR . BACK . BUILD_FILE
elseif filereadable(DIR . BACK . MAKE_FILE)
    let CPP_MAKE_FILE = "make " . DIR . BACK . MAKE_FILE

" Check for Build.bat or Makefile in two directories above
elseif filereadable(DIR . BACK . BACK . BUILD_FILE)
    let CPP_MAKE_FILE = DIR . BACK . BACK . BUILD_FILE
elseif filereadable(DIR . BACK . BACK . MAKE_FILE)
    let CPP_MAKE_FILE = "make " . DIR . BACK . BACK .MAKE_FILE

endif

let &makeprg=CPP_MAKE_FILE
