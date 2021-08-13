#!py
from distro import linux_distribution
os = linux_distribution()[0].lower()
if os == 'ubuntu':
  editor = 'vim'
elif os == 'centos stream':
  editor = 'vim-enhanced'
def run():
  return {"Installing VIM": {
  "pkg.installed": [
     { "name": editor }]
}}