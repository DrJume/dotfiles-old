# Unix based

cat <<EOF > print.sh
#!/bin/bash
echo \$PWD
echo $PWD
EOF

linux() {
  # Ubuntu Linux specific

  
}


darwin() {
 # MacOS specific

}



OS="`uname`"
case $OS in
  'Linux')
    linux
    ;;

  'Darwin') 
    darwin
    ;;
esac
