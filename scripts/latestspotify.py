import subprocess
var = subprocess.check_output("cat tmp.html | grep -o -e '>spotify.*amd64.deb' | grep -o -e 'spotify.*.deb'",shell=True)
var = var.split('\n')
print max(var)
