name: Convert markdown to Word (Beagle Identification Photos)
on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
jobs:
  convert_via_pandoc:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          ref: ${{ github.event.push.head.ref }}
      - uses: docker://pandoc/core:2.19.2
        with:
          args: >- # allows you to break string into multiple lines
            --standalone
            --output=BeagleIdentificationPhotos.docx
            BeagleIdentificationPhotos.md
      - name: ⤴ Commit updated version
        run: |
          git pull 'https://${{secrets.GITHUB_TOKEN}}@github.com/RalphHightower/EOL-RalphHightower.git'
          git config remote.origin.url 'https://${{secrets.GITHUB_TOKEN}}@github.com/RalphHightower/EOL-RalphHightower.git'
          git config user.name RalphHightower 
          git config user.email ralph.hightower@gmail.com
          git add .
          git commit -am "Update Document for Beagles"
          git push