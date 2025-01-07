# chariot-autoroot

This is a tool to root LG TVs running webOS 1. It automatically installs
[Homebrew Channel](https://github.com/webosbrew/webos-homebrew-channel).

It uses a feature of webOS (and NetCast) intended to run the
[Chariot](https://www.keysight.com/us/en/products/network-test/performance-monitoring/ixchariot.html)
endpoint test.

Since LG has been aware of this for a long time and hasn't released any
new firmware for webOS 1 since early 2022, this is never going to be patched.

## Instructions

1. Download `pelinux_arm_sl_710.tar` from the latest release on the
   [Releases](https://github.com/throwaway96/chariot-autoroot/releases)
   page.
2. Place the `pelinux_arm_sl_710.tar` archive in the root directory of a
   USB drive. (It should be formatted with FAT32 or NTFS and only have
   one partition.)
3. Plug the USB drive into your TV. (Make sure it's the only USB drive
   connected.)
4. Open the Instart menu. (If you don't have a service remote, try an
   [SSAP client](https://github.com/throwaway96/webos-ssap-web).)
   The password is 0413.
5. Go to page 8, "Test Option". Select "Chariot Endpoint" and press OK.

If you have the LG Developer Mode app installed, you *must* remove it before
rebooting. **Do not** install it while your TV is rooted.

## Settings

You can influence the behavior of the script by putting certain files inside
the archive:

* `autoroot.debug` - Enables additional logging.
* `autoroot.telnet` - Makes a root shell available via telnet on port 23 when
  the script starts.

(I realize this is not a great mechanism, but I don't know if it matters
enough to bother fixing.)

## Troubleshooting

Toasts from the script may be hidden by system messages.

If the toast and/or log says "Rooting complete" but you don't see Homebrew
Channel, reboot the TV. Make sure Quick Start+ is disabled.

## Support

You can find more information at [webosbrew.org](https://www.webosbrew.org/).

If you need help rooting your TV, try the
[OpenLGTV Discord](https://discord.gg/hXMHAgJC5R). Before you ask a question,
check the FAQ (#faq) to see if it is answered there! Attach your `autoroot.log`
when asking for help.

## License

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along
with this program. If not, see <https://www.gnu.org/licenses/>.

See `COPYING` for details.
