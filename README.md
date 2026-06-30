# homebrew-go-cli-tools

A collection of Go cli tools for homebrew.

## Install

```sh
brew tap Caspian-X/tools
brew install go-cli-tools
brew trust caspian-x/tools
```

## Upgrade

If you do not have the latest version you can just run
```sh
brew upgrade go-cli-tools
```

You can check if you have the latest version by checking the releases on the GitHub page and running
```sh
brew info go-cli-tools
```

## Tools

### date-photos
Adds the "DateTimeOriginal" exif meta tag to .jpeg, .jpg, .png, .webp, .avif, and .gif files (case-insensitive) if there is not a valid metadata tag.

```bash
date-photos [-dry-run/-n] <directory>
```
> Flags:
>   - `-dry-run`, `-n`: Print changes without modifying files

### remove-duplicate-photos
Removes original photos/videos/files of ones that were edited on Apple devices. Example: if there are two photos, IMG_E1234.jpg and IMG_1234.jpg, this script will remove IMG_1234.jpg because IMG_E1234.jpg is the "newer", edited version.

```bash
remove-duplicate-photos [-dry-run/-n] <directory>
```
> Flags:
>   - `-dry-run`, `-n`: Perform a dry run (list files that would be deleted)

### remove-files
Deletes files with extensions based on provided flags recursively from the given directory.

```bash
remove-files [-dry-run/-n] [-aae] [-heic] <directory>
```
> Flags:
>   - `-dry-run`, `-n`: Perform a dry run without deleting files
>   - `-aae`: Remove .aae files
>   - `-heic`: Remove .heic files

### convert-heic-to-jpg
Converts .heic (case-insensitive) images to .jpg.

```bash
convert-heic-to-jpg [-dry-run/-n] <directory>
```
> Flags:
>   - `-dry-run`, `-n`: Run the script without making any changes

### convert-m4a-to-mp3
Converts .m4a audio files to .mp3.

```bash
convert-m4a-to-mp3 [-delete/-d] [-recursive/-r] <directory>
```
> Flags:
>   - `-delete`, `-d`: Delete original .m4a files after conversion
>   - `-recursive`, `-r`: Recursively search subdirectories for .m4a files

### normalize-audio
Normalizes the volume of all MP3 files in a directory to a consistent loudness level using EBU R128 / LUFS loudness normalization. Original files are never modified — normalized copies are saved separately.

```bash
normalize-audio [-input <dir>] [-output <dir>] [-target <LUFS>] [-workers <n>]
```
> Flags:
>   - `-input`: Directory containing MP3 files (default: ".")
>   - `-output`: Output directory for normalized files (default: "normalized")
>   - `-target`: Target loudness in LUFS (default: -14.0)
>   - `-workers`: Number of files to process concurrently (default: number of CPU cores)

### dir-compare
Compare two directories recursively for file differences based on filenames. Outputs a nicely formatted list showing files unique to each directory and files with different sizes.

```bash
dir-compare [--skip-noise/-s] <dir1> <dir2>
```
> Flags:
>   - `--skip-noise`, `-s`: Ignore noise files (.DS_Store, ._*)

### check-thumbnails
Find thumbnail image files that don't have matching video file counterparts. Also reports videos that don't have matching thumbnails.

```bash
check-thumbnails [--delete/-d] [--recursive/-r] [directory]
```
> Flags:
>   - `--delete`, `-d`: Delete orphan thumbnail files after scanning
>   - `--recursive`, `-r`: Scan subdirectories recursively (default: true)

### trim-video
Trim first and/or last milliseconds from video files using ffmpeg.

```bash
trim-video [-f first_ms] [-l last_ms] [-r] [-d] [-n] <file_or_directory>
```
> Flags:
>   - `-f`, `--first`: Trim first x milliseconds
>   - `-l`, `--last`: Trim last x milliseconds
>   - `-r`, `--recursive`: Process directories recursively
>   - `-d`, `--delete`: Delete original files after processing
>   - `-n`, `--dry-run`: Show what would be done without executing

### sort-photos
Sorts image files from a directory into year/month subdirectories based on EXIF metadata dates, falling back to file modification time when no EXIF date is present.

```bash
sort-photos [--copy/-c] [--dry-run/-n] <directory>
```
> Flags:
>   - `--copy`, `-c`: Copy files instead of moving (keeps originals)
>   - `--dry-run`, `-n`: Print actions without modifying files
