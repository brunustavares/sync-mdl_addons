#
# sync-mdl_addons.ps1
# PowerShell script for synchronizing Moodle addons between two installations
# (developed for UAb - Universidade Aberta)
#
# @package    sync-mdl_addons
# @category   Script
# @author     Bruno Tavares <brunustavares@gmail.com>
# @link       https://www.linkedin.com/in/brunomastavares/
# @copyright  Copyright (C) 2022-present Bruno Tavares
# @license    GNU General Public License v3 or later
#             https://www.gnu.org/licenses/gpl-3.0.html
# @version    2025121107
# @date       2022-08-01
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#

# elenco de plugins

    # iniciar array
    $plugins = @()

    # CLI scripts
    $plugins += @('admin\cli\cas_CHKSET_srv02.php')
    $plugins += @('admin\cli\config_decisao_CLI.php')
    # $plugins += @('admin\cli\get_PEE_data.php')
    $plugins += @('admin\cli\notify_plus.php')
    $plugins += @('admin\cli\open_courses.php')
    # $plugins += @('admin\cli\quiz2urkund.php')
    # $plugins += @('admin\cli\send_parts_list.php')
    # $plugins += @('admin\cli\set_assign_devices.php')
    # $plugins += @('admin\cli\students_notify.php')
    $plugins += @('admin\cli\sync_grds.php')

    # tools
        # admin
        $plugins += @('admin\maintenance')
        $plugins += @('admin\osticket')
        $plugins += @('admin\tool\certificate')
        $plugins += @('admin\tool\mfa')
        $plugins += @('admin\tool\pluginskel')
        # $plugins += @('lib\phpmyfaq')

        # assorted
        $plugins += @('login\change_pwd')
        $plugins += @('server_time')
        # $plugins += @('course\get_pee_part.php')
        # $plugins += @('user\get_efolios.php')

    # assorted folders
    $plugins += @('inf_sec')
    $plugins += @('pub_doc')

    # assorted files
    $plugins += @('.htaccess')
    $plugins += @('config.php')
    $plugins += @('maintenance.disable')
    $plugins += @('maintenance.jpg')
    $plugins += @('policy.php')
    $plugins += @('robots.txt')
    $plugins += @('admin\auth_lib_mdl.php')

    # auth
    $plugins += @('auth\uabsaml')

    # blocks
    $plugins += @('blocks\absentia')
    $plugins += @('blocks\completion_progress')
    $plugins += @('blocks\culactivity_stream')
    $plugins += @('blocks\dictionary')
    $plugins += @('blocks\gesturmas')
    $plugins += @('blocks\lanca_pauta')
    $plugins += @('blocks\popup')
    $plugins += @('blocks\sebenta')
    $plugins += @('blocks\turnitin')
    # $plugins += @('blocks\uab_limesurvey')
    $plugins += @('blocks\val_py')
    $plugins += @('blocks\xp')

    # course formats
    $plugins += @('course\format\grid')
    $plugins += @('course\format\onetopic')
    $plugins += @('course\format\tiles')

    # filters
    $plugins += @('filter\dictionary')
    $plugins += @('filter\embedquestion')
    $plugins += @('filter\generico')
    $plugins += @('filter\poodll')
    $plugins += @('filter\wiris')

    # editor
        # Atto
        $plugins += @('lib\editor\atto\plugins\chemistry')
        $plugins += @('lib\editor\atto\plugins\cloze')
        $plugins += @('lib\editor\atto\plugins\count')
        $plugins += @('lib\editor\atto\plugins\fontfamily')
        $plugins += @('lib\editor\atto\plugins\fontsize')
        $plugins += @('lib\editor\atto\plugins\fullscreen')
        $plugins += @('lib\editor\atto\plugins\generico')
        $plugins += @('lib\editor\atto\plugins\htmlplus')
        $plugins += @('lib\editor\atto\plugins\morefontcolors')
        $plugins += @('lib\editor\atto\plugins\pastespecial')
        $plugins += @('lib\editor\atto\plugins\poodll')
        $plugins += @('lib\editor\atto\plugins\preview')
        $plugins += @('lib\editor\atto\plugins\teamsmeeting')
        $plugins += @('lib\editor\atto\plugins\wiris')

        # TinyMCE
        $plugins += @('lib\editor\tiny\plugins\fontcolor')
        $plugins += @('lib\editor\tiny\plugins\fontfamily')
        $plugins += @('lib\editor\tiny\plugins\fontsize')
        $plugins += @('lib\editor\tiny\plugins\wiris')
        $plugins += @('lib\editor\tinymce\plugins\poodll')
        # $plugins += @('lib\editor\tinymce\plugins\tiny_mce_wiris')

    # local
    $plugins += @('local\aida')
    $plugins += @('local\config_decisao')
    $plugins += @('local\csp')
    $plugins += @('local\llmrag')
    # $plugins += @('local\logdigest')
    $plugins += @('local\prov_e2')

    # message
    $plugins += @('message\output\culactivity_stream')

    # mod
    $plugins += @('mod\assign\feedback\poodll')
    $plugins += @('mod\assign\submission\onlinepoodll')
    $plugins += @('mod\choicegroup')
    $plugins += @('mod\coursecertificate')
    $plugins += @('mod\data\field\poodll')
    $plugins += @('mod\googlemeet')
    $plugins += @('mod\hotpot')
    $plugins += @('mod\hvp')
    $plugins += @('mod\mindmap')
    $plugins += @('mod\minilesson')
    $plugins += @('mod\pcast')
    $plugins += @('mod\quiz\report\archive')
    $plugins += @('mod\turnitintooltwo')
    $plugins += @('mod\vpl')

    # plagiarism
    $plugins += @('plagiarism\turnitin')
    $plugins += @('plagiarism\urkund')

    # question
        # behaviour
        $plugins += @('question\behaviour\selfassess')

        # types
        $plugins += @('question\type\lti')
        $plugins += @('question\type\poodllrecording')
        $plugins += @('question\type\recordrtc')
        $plugins += @('question\type\vplquestion')

    # report
    $plugins += @('report\benchmark')
    $plugins += @('report\customsql')

    # repositories
    $plugins += @('repository\poodll')

    # themes
    $plugins += @('theme\adaptable')
    $plugins += @('theme\bootstrapbase')
    $plugins += @('theme\portvv')
    # $plugins += @('theme\uab_v4')
    # $plugins += @('theme\uabv3')

        # favicon
        $plugins += @('theme\boost\pix\favicon.ico')
        # $plugins += @('theme\boost\pix\favicon.ico_old')

# parâmetros: directorias de origem e destino

    # path de origem
    $mdl_old= Read-Host -Prompt "directoria de origem"

    if ($mdl_old -notmatch '\\$')
    {
        $mdl_old += '\'

    }

    # path de destino
    $mdl_new= Read-Host -Prompt "directoria de destino"

    if ($mdl_new -notmatch '\\$')
    {
        $mdl_new += '\'

    }

# cópia
$i = 0
$t = $plugins.count

Foreach ($plugin in $plugins)
{

    $orig = $mdl_old + $plugin
    $dest = $mdl_new + $plugin

    Copy-Item -Path $orig -Destination $dest -Recurse -Force

    $i++
    $p = [math]::round(($i/$t*100), 2)

    Write-Progress -Activity "a copiar..." -Status "progresso: $i/$t | $p%" -PercentComplete $p

}
