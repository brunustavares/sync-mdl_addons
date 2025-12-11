# Moodle Addons Synchronization Script

This PowerShell script facilitates the synchronization of Moodle addons (plugins, themes, and other custom files) between two Moodle installations.

The script prompts the user for a source and a destination directory and then copies a predefined list of files and folders from the source to the destination, showing a progress bar for the operation.

It was originally developed for [Universidade Aberta (UAb)](https://portal.uab.pt/).

## Features

- **Selective Synchronization**: Copies a specific, hardcoded list of addons and configuration files.
- **Recursive Copy**: Copies entire directories for plugins and themes.
- **User-Friendly**: Prompts for source and destination paths.
- **Progress Tracking**: Displays a progress bar indicating the status of the copy operation.

## Requirements

- Windows Operating System
- PowerShell

## Usage

1.  Open a PowerShell terminal.
2.  Navigate to the directory where `sync-mdl_addons.ps1` is located.
3.  Execute the script by running:
    ```powershell
    .\sync-mdl_addons.ps1
    ```
4.  When prompted, enter the full path to the source Moodle directory (e.g., `C:\moodle_old\wwwroot`).
5.  Next, enter the full path to the destination Moodle directory (e.g., `C:\moodle_new\wwwroot`).

The script will automatically append a trailing backslash `\` to the paths if it's missing and then proceed to copy the files and folders specified in the `$plugins` array.

## Configuration

The list of addons to be synchronized is defined in the `$plugins` array at the beginning of the `sync-mdl_addons.ps1` script. You can customize this list to fit your needs by editing the script directly.

-   **To add a new addon**: Add a new line to the `$plugins` array.
    ```powershell
    $plugins += @('path/to/your/addon')
    ```
-   **To remove an addon**: Delete the corresponding line from the script.
-   **To temporarily disable synchronization for an addon**: Comment out the line by adding a `#` at the beginning.
    ```powershell
    # $plugins += @('path/to/your/addon')
    ```

## Synchronized Addons & Files

The following is the default list of addons and files that the script is configured to synchronize.

### CLI Scripts
- `admin\cli\cas_CHKSET_srv02.php`
- `admin\cli\config_decisao_CLI.php`
- `admin\cli\notify_plus.php`
- `admin\cli\open_courses.php`
- `admin\cli\sync_grds.php`

### Tools
#### Admin
- `admin\maintenance`
- `admin\osticket`
- `admin\tool\certificate`
- `admin\tool\mfa`
- `admin\tool\pluginskel`

#### Assorted
- `login\change_pwd`
- `server_time`

### Assorted Folders & Files
- `inf_sec`
- `pub_doc`
- `.htaccess`
- `config.php`
- `maintenance.disable`
- `maintenance.jpg`
- `policy.php`
- `robots.txt`
- `admin\auth_lib_mdl.php`

### Authentication
- `auth\uabsaml`

### Blocks
- `blocks\absentia`
- `blocks\completion_progress`
- `blocks\culactivity_stream`
- `blocks\dictionary`
- `blocks\gesturmas`
- `blocks\lanca_pauta`
- `blocks\popup`
- `blocks\sebenta`
- `blocks\turnitin`
- `blocks\val_py`
- `blocks\xp`

### Course Formats
- `course\format\grid`
- `course\format\onetopic`
- `course\format\tiles`

### Filters
- `filter\dictionary`
- `filter\embedquestion`
- `filter\generico`
- `filter\poodll`
- `filter\wiris`

### Editor Plugins
#### Atto
- `lib\editor\atto\plugins\chemistry`
- `lib\editor\atto\plugins\cloze`
- `lib\editor\atto\plugins\count`
- `lib\editor\atto\plugins\fontfamily`
- `lib\editor\atto\plugins\fontsize`
- `lib\editor\atto\plugins\fullscreen`
- `lib\editor\atto\plugins\generico`
- `lib\editor\atto\plugins\htmlplus`
- `lib\editor\atto\plugins\morefontcolors`
- `lib\editor\atto\plugins\pastespecial`
- `lib\editor\atto\plugins\poodll`
- `lib\editor\atto\plugins\preview`
- `lib\editor\atto\plugins\teamsmeeting`
- `lib\editor\atto\plugins\wiris`

#### TinyMCE
- `lib\editor\tiny\plugins\fontcolor`
- `lib\editor\tiny\plugins\fontfamily`
- `lib\editor\tiny\plugins\fontsize`
- `lib\editor\tiny\plugins\wiris`
- `lib\editor\tinymce\plugins\poodll`

### Local Plugins
- `local\aida`
- `local\config_decisao`
- `local\csp`
- `local\llmrag`
- `local\prov_e2`

### Message Outputs
- `message\output\culactivity_stream`

### Activity Modules (mod)
- `mod\assign\feedback\poodll`
- `mod\assign\submission\onlinepoodll`
- `mod\choicegroup`
- `mod\coursecertificate`
- `mod\data\field\poodll`
- `mod\googlemeet`
- `mod\hotpot`
- `mod\hvp`
- `mod\mindmap`
- `mod\minilesson`
- `mod\pcast`
- `mod\quiz\report\archive`
- `mod\turnitintooltwo`
- `mod\vpl`

### Plagiarism Plugins
- `plagiarism\turnitin`
- `plagiarism\urkund`

### Question Types & Behaviours
- `question\behaviour\selfassess`
- `question\type\lti`
- `question\type\poodllrecording`
- `question\type\recordrtc`
- `question\type\vplquestion`

### Reports
- `report\benchmark`
- `report\customsql`

### Repositories
- `repository\poodll`

### Themes
- `theme\adaptable`
- `theme\bootstrapbase`
- `theme\portvv`
- `theme\boost\pix\favicon.ico`

## Licenses

**Author**: Bruno Tavares  
**Contact**: [brunustavares@gmail.com](mailto:brunustavares@gmail.com)  
**LinkedIn**: [https://www.linkedin.com/in/brunomastavares/](https://www.linkedin.com/in/brunomastavares/)  
**Copyright**: 2022-present Bruno Tavares  
**License**: GNU GPL v3 or later  

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
