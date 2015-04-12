## The Setup

Right now there really is no concrete, simple way to setup and configure an
inifinity keyboard. The [online configurator][1] is broken and there is very
little information in the [GitHub repo][2] when it comes to bootstrapping a
simple configuration. This should help.

## Dependencies

Before starting let's get a few things installed. This will focus on the Mac
but, should be blindly obvious what needs to be done for your platform

1. `brew tap PX4/homebrew-px4`
1. `brew install gcc-arm-none-eabi`
1. `brew install python3`

## Bootstrap Guide

1. The very first thing you will need to do is clone the [controller code][2]
1. Cd into this new directory and navigate to the `./kll` folder
1. Clone this repo into the `./kll` folder
1. When running a build, the directory home is set to: `./kll/layouts`
  1. due to this, symlink this repo's `./config` folder into `./kll/layouts`
1. Change into the build folder for the controller. (`./build`)
1. Run: `../kll/infinity/build.sh`
1. A new `./kiibohd.dfu.bin` file will be generated in the `./build` directory

## Flash Config File To Keyboard

1. Follow the directions at the end of [Massdrop's Infinity build instructions][3]
1. The file that you will flash to the board will be the generated
`kiibohd.dfu.bin` file.
1. TADA

## Configuring The Build Script

Mapping of the layouts can be a little weird. I have [compiled the intricacies][4]
of this on my Wiki. Getting the compiled maps to work as intended is now the
hardest part over actually figuring out how to program it. If for some reason
these instructions don't work, feel free to [open an issue][5] and we can figure it out.

[1]: https://www.massdrop.com/keyboard/infinity
[2]: https://github.com/kiibohd/controller
[3]: https://www.massdrop.com/keyboard/infinity/assembly
[4]: https://github.com/braidn/Knowledge-Repo/blob/master/InfinityKllInfo.md#layering
[5]: https://github.com/braidn/infinity/issues/new
