# Note Terminal (nt)

`nt` is a simple note-taking script for the terminal. It allows you to add, get, list, and remove notes. The notes are stored in a text file in your home directory.

## Features

- Add notes
- Get specific notes by line number
- List all notes with colored line numbers
- Remove specific notes by line number
- Copy to the clipboard

## Installation

To install `nt`:

. Make the `install_nt.sh` script executable and run it:

   ```sh
   chmod +x install.sh
   ./install.sh
   ```

. To remove it the same thing

   ```sh
   chmod +x uninstall.sh
   ./uninstall.sh
   ```


### Examples

- Add a Note:

```sh

nt -a This is a note
   ```
- Get a Specific Note:

```sh

nt -g 2
   ```
- Remove a Specific Note:

```sh

nt -r 3
   ```
- Copy a Specific Note to Clipboard:

```sh

nt -c 2
   ```
- List All Notes:

```sh

nt
   ```
- Add the output of ls:

```sh

ls | nta
   ```
Add the output of cat on a file:

```sh

cat somefile.txt | nta
   ```   
Add the output of grep:

```sh

grep "pattern" somefile.txt | nta
   ```
