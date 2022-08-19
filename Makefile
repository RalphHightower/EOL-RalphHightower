target: Accounts.docx Assets.docx ComputerSettings.docx EquipmentDistrbution.docx NetworkSettings.docx Obituary.docx  SongsForService.docx
files: Accounts.md Assets.md ComputerSettings.md EquipmentDistrbution.md NetworkSettings.md Obituary.md SongsForService.md

dest: $$.docx
               git config remote.origin.url 'https://${{secrets.GITHUB_TOKEN}}@github.com/RalphHightower/EOL-RalphHightower.git' $$.md
               git config user.name RalphHightower
               git config user.email ralph.hightower@gmail.com
               git add .
               git commit -am "update word"
               git push
