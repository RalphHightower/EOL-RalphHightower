files: Obituary EquipmentDisposition Assets
<target>: Obituary.docx EquipmentDisposition.docx Assets.docx 

dest: $$.docx
               git config remote.origin.url 'https://${{secrets.GITHUB_TOKEN}}@github.com/RalphHightower/EOL-RalphHightower.git' *.md
               git config user.name RalphHightower
               git config user.email ralph.hightower@gmail.com
               git add .
               git commit -am "update word"
               git push
