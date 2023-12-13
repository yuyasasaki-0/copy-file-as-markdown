# Copy File as Markdown

## Overview
The `copy-file-as-markdown` utility allows you to easily convert the content of files into Markdown code blocks. This is especially useful for developers and content creators who need to share code snippets or file contents in a Markdown format.

## Features
- **Drag-and-Drop Support**: Simply drag and drop files onto the batch script.
- **Automatic Markdown Conversion**: Converts the contents of the files into Markdown code blocks.
- **Clipboard Copying**: The generated Markdown is automatically copied to your clipboard for easy pasting.

## Prerequisites
Ensure that your system meets the following requirements:
- Windows Operating System
- Necessary permissions to execute batch scripts

## Installation
1. Clone or download this repository to your local machine.
2. Locate the `copyCodeblock.bat` file within the repository.

## Configuration
Before using the script, you need to set the base folder path relative to which the file paths will be displayed in the code blocks.

1. Open the `copyCodeblock.bat` file in a text editor.
2. Locate the line `set baseFolder=src`.
3. Replace `src` with the path of your base folder.

## Usage
1. Drag and drop one or more files onto `copyCodeblock.bat`.
2. The script will process each file and create Markdown code blocks.
3. The Markdown code blocks are automatically copied to your clipboard.
4. Paste the clipboard content wherever you need the Markdown format (e.g., ChatGPT, GitHub, documentation).

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
