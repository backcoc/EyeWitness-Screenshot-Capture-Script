# EyeWitness Screenshot Capture Script

## Overview
This Bash script processes all `.txt` files in the same directory, extracts URLs, and captures screenshots using `EyeWitness`. Each set of screenshots is stored in a subdirectory named after the input file.

## Features
- **Automatically processes all `.txt` files** in the directory.
- **Creates a separate subdirectory** for each input file to store screenshots.
- **Runs `EyeWitness` in headless mode** to capture screenshots efficiently.
- **Ensures the script does not run if `EyeWitness` is not installed**.

## Prerequisites
- Install [`EyeWitness`](https://github.com/FortyNorthSecurity/EyeWitness):
  ```bash
  git clone https://github.com/FortyNorthSecurity/EyeWitness.git
  cd EyeWitness
  ./setup.sh
  ```

## Usage
1. Place all `.txt` files containing URLs in the same directory as the script.
2. Run the script:
   ```bash
   chmod +x eyewitness_screenshot.sh
   ./eyewitness_screenshot.sh
   ```
3. Screenshots will be saved in:
   - `screenshots/<input_filename>/`

## Example
**Input (`urls.txt`)**
```
http://example.com
http://test.com
```

**Output Directory Structure**
```
/screenshots/
    ├── urls/
    │   ├── example.com.png
    │   ├── test.com.png
```

## Notes
- The script automatically creates required directories.
- Ensure `EyeWitness` is installed before running the script.
- The script skips files that are not `.txt`.

