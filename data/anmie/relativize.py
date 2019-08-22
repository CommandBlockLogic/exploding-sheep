import os, re
pos = (-10.5,20.5,-10.5)
path = os.path.dirname(os.path.abspath(__file__))
patterns = [
    r'tp \S+ (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)',
    r'summon \S+ (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)',
    r'setblock (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)',
    r'particle \S+ (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)',
    r'particle \S+ \D+ (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)',
    r'playsound \S+ \S+ \S+ (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)',
    r'fill (-?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)? -?\d+(\.\d+)?)'
]
def eachFile(filepath):
    fileNames = os.listdir(filepath)
    for file in fileNames:
        newDir = filepath + '/' + file
        if os.path.isfile(newDir):
            if os.path.splitext(newDir)[1] == '.mcfunction':
                with open(newDir, 'r+') as f:
                    lines = []
                    for line in f.readlines():
                        ln = line
                        for p in patterns:
                            ret = re.search(p, line)
                            if ret:
                                if ('fill' in p):
                                    ln = line.replace(ret.group(1),relativize2(ret.group(1)))
                                else:
                                    ln = line.replace(ret.group(1),relativize(ret.group(1)))
                        lines.append(ln)
                    f.seek(0)
                    f.truncate()
                    f.writelines(lines)
        else:
            eachFile(newDir)
def relativize(s):
    ns = s.split(' ')
    nums = []
    for n in ns:
        nums.append(float(n))
    return "~" + str(nums[0]-pos[0]) + " ~" + str(nums[1]-pos[1]) + " ~" + str(nums[2]-pos[2])
def relativize2(s):
    ns = s.split(' ')
    nums = []
    for n in ns:
        nums.append(float(n))
    return "~" + str(nums[0]-pos[0]) + " ~" + str(nums[1]-pos[1]) + " ~" + str(nums[2]-pos[2]) + " ~" + str(nums[3]-pos[0]) + " ~" + str(nums[4]-pos[1]) + " ~" + str(nums[5]-pos[2])

eachFile(path)