const fs = require('fs')

const homedir = require('os').homedir()
const dotfiles = fs.readdirSync(__dirname + '/sources')

for (dotfile of dotfiles) {
  const filename = dotfile.split('#').pop()
  const dirTree = dotfile.split('#').slice(0, -1)

  let pwd = homedir + '/'

  if (dirTree.length > 0) {
    for (dir of dirTree) {
      pwd += dir + '/'
      
      if (!fs.existsSync(pwd)) {
        fs.mkdirSync(pwd)
      }
    }
  }

  pwd += filename
  fs.writeFileSync(pwd, fs.readFileSync(__dirname + '/sources/' + dotfile, { encoding: 'utf8' }))

}