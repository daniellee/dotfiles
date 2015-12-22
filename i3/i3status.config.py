# -*- coding: utf-8 -*-
# file:     i3pystatus
# author:   moparx     - http://moparx.com/configs
# last mod: 08/16/2014 - 10:55 EDT
# vim: set ai et fenc=utf-8 ft=python nu si sts=0 sw=4 ts=8 tw=0 :
# ----------------------------------------------------------------------

import subprocess

from i3pystatus import Status
from i3pystatus.mail import maildir

status = Status(standalone=True)

#Clock
status.register("clock",
    format = "  %a, %b %_d %Y %I:%M%P ", )

# Audio
status.register("pulseaudio",
    format = "  {volume} ",
    format_muted = "  muted {%volume} ", )

# CPU temperature
status.register("temp",
    format = "  {temp:.0f}°C ", )

# Average load
status.register("load",
    format = "  {avg1} {avg5} ",
    critical_limit = 4, )

# MPD status
# status.register("mpd",
#     format = "[ {status} {artist} - {title} ]",
#     status = {
#         "pause": "",
#         "play": "",
#         "stop": "",
#     }, )
#
# Email
# status.register("mail",
#     format = "  {unread} new email ",
#     format_plural = "  {unread} new emails ",
#     color_unread = "#00FF00",
#     email_client = "urxvtc -e mutt",
#     backends = [
#         maildir.MaildirMail(
#             directory = "/home/moparx/.mail/inbox"
#         )
#     ])
#

status.run()
