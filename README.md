# CHDMAN Disc Toolkit

Windows helper scripts for converting disc images to CHD format, extracting CHD files back to CUE/BIN, and eventually organizing multi-disc games with emulator-ready M3U playlists using MAME's `chdman` tool.

## What it does

- Converts `.cue`, `.gdi`, and `.iso` files from a `Games` folder into `.chd` files in a `Compressed` folder.
- Converts `.cue` files in the current folder tree to `.chd`.
- Extracts `.chd` files in the current folder tree back to `.cue`/`.bin`.

## Planned features

- Detect and organize multi-disc games automatically.
- Create one folder per game when needed.
- Generate `.m3u` playlists for multi-disc games.
- Improve naming and output structure for emulator libraries.

## Files

- `CUE-GDI-ISO to CHD MAIN.bat` - converts `.cue`, `.gdi`, and `.iso` files from `Games` to `Compressed`.
- `cue2chd.bat` - converts `.cue` files found in the current folder tree to `.chd`.
- `chd2cue.bat` - extracts `.chd` files found in the current folder tree to `.cue`.

## Requirements

- Windows
- `chdman.exe` from MAME

`chdman.exe` is not included in this repository. Download MAME from the official MAME site, then copy `chdman.exe` next to the `.bat` files or make sure it is available in your system `PATH`.

MAME CHDMAN documentation: https://docs.mamedev.org/tools/chdman.html

## Usage

### Convert CUE/GDI/ISO files to CHD

1. Create a folder named `Games` beside the batch files.
2. Put your own legally dumped `.cue`, `.gdi`, or `.iso` files in `Games`.
3. Run `CUE-GDI-ISO to CHD MAIN.bat`.
4. The converted `.chd` files will be created in `Compressed`.

### Convert CUE files in the current folder tree

Place `cue2chd.bat` beside `chdman.exe`, put it in the folder containing your `.cue` files, then run it.

### Extract CHD files back to CUE/BIN

Place `chd2cue.bat` beside `chdman.exe`, put it in the folder containing your `.chd` files, then run it.

## Credits

This project is a small helper wrapper around `chdman`, the CHD file manager from the MAME project.

- CHDMAN documentation: https://docs.mamedev.org/tools/chdman.html
- MAME documentation: https://docs.mamedev.org/
- MAME website: https://www.mamedev.org/

All credit for `chdman` belongs to MAMEdev and the MAME contributors. This repository is not affiliated with, sponsored by, or endorsed by the MAME project.

## Important notes

- Do not upload game files, ROMs, disc images, or generated CHD files to GitHub.
- Only use this with media you legally own or are allowed to convert.
- `chdman.exe` is not included. Download it from the official MAME project.

## License

Before choosing a license for these batch scripts, check the license of any original files you modified.

- If the original author used MIT, GPL, BSD, Apache, or another open-source license, keep their license and attribution.
- If the original files had no license, ask the author for permission before publishing your modified version.
- If you wrote the scripts yourself or have permission to relicense them, MIT is a simple choice for small utility scripts.
