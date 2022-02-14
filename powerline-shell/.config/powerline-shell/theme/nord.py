from powerline_shell.themes.default import DefaultColor

nord = 0
red = 1
green = 2
yellow = 3
blue = 4
purple = 5
light_blue = 6
snow = 7
nord_light = 8
teal = 14

class Color(DefaultColor):
    """Basic theme which only uses colors in 0-15 range"""
    USERNAME_FG = blue
    USERNAME_BG = nord
    USERNAME_ROOT_BG = red

    HOSTNAME_FG = snow
    HOSTNAME_BG = nord_light

    HOME_SPECIAL_DISPLAY = False
    PATH_FG = 0
    PATH_BG = 4
    CWD_FG = 0
    SEPARATOR_FG = 0

    READONLY_BG = 1
    READONLY_FG = 15

    REPO_CLEAN_BG = nord 
    REPO_CLEAN_FG = green
    REPO_DIRTY_BG = nord
    REPO_DIRTY_FG = yellow

    SVN_CHANGES_BG = 7
    SVN_CHANGES_FG = 4  # dark green

    JOBS_FG = 14
    JOBS_BG = 8

    CMD_PASSED_BG = 8
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 11
    CMD_FAILED_FG = 0

    SVN_CHANGES_BG = REPO_DIRTY_BG
    SVN_CHANGES_FG = REPO_DIRTY_FG

    VIRTUAL_ENV_BG = 2
    VIRTUAL_ENV_FG = 0

    AWS_PROFILE_FG = 14
    AWS_PROFILE_BG = 8

    TIME_FG = 8
    TIME_BG = 7

    RESET = -1

    GIT_AHEAD_BG = nord
    GIT_AHEAD_FG = purple

    GIT_BEHIND_BG = nord
    GIT_BEHIND_FG = purple

    GIT_STAGED_BG = nord
    GIT_STAGED_FG = purple

    GIT_NOTSTAGED_BG = nord
    GIT_NOTSTAGED_FG = purple

    GIT_UNTRACKED_BG = nord
    GIT_UNTRACKED_FG = purple

    GIT_CONFLICTED_BG = nord
    GIT_CONFLICTED_FG = purple

    GIT_STASH_BG = nord
    GIT_STASH_FG = purple
