import bz2

DBG                     = 1
PROJECTS_FOLDER         = "User_Projects"
PROJECT_PREFIX          = "project_"
ALLOWED_CHARS           = [ chr( ord( 'a' ) + i ) for i in range( 26 ) ] + [ chr( ord( 'A' ) + i ) for i in range( 26 ) ] + [ str( i ) for i in range( 10 ) ] + [ "_" ]
NEW_PROJECT_FORM        = 1
EDIT_PROJECT_FORM       = 2
NEW_BOARD_FORM          = 3
EDIT_BOARD_FORM         = 4
NEW_CARD_FORM           = 5
NO_TAG_SELECTED         = "-- None --"
VERTICAL_MOUSE_MOTION   = "<MouseWheel>"
DOUBLE_LEFT_CLICK       = "<Double-Button-1>"

deltaFactor             = -120

def dbg( msg_priority, *args, **kwargs ):
    if msg_priority < DBG:
        print( *args, **kwargs )
# 7ed37470
# 209cc473
# 80b7d8c0
# cfc15226
# cef7e9d5
# 02c1ac4d
# 846772cd
# 55efb3e4
# bca3b4fb
# e0d2f257
# 730a231a
# 8411b8fc
# 2ee6600f
# 2e20b7d1
