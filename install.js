const fs = require('fs')

const dotfiles = fs.readdirSync(__dirname + '/files')

for (dotfile of dotfiles) {
  const filename = dotfile.split('#').pop()
  const dirTree = dotfile.split('#').slice(0, -1)

  let pwd = ""

  if (dirTree.length > 0) {
    for (dir of dirTree) {
      pwd += dir + '/'
      console.log(pwd)
      if (!fs.existsSync(pwd)) {
        fs.mkdirSync(pwd)
      }
    }
  }

  pwd += filename
  pwd = '~/' + pwd
  fs.writeFileSync(pwd, fs.readFileSync(__dirname + '/files/' + dotfile, { encoding: 'utf8' }))

}