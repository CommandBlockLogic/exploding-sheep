# -*- coding: utf-8 -*-
# -*- coding: UTF-8 -*-
import os, re
pattern = r'execute if score sys tick matches (\.\.)?(\d+)(\.\.)? '

#*** 文件路径 ***
#       另注：数据包中只有anmie:x/scene的函数中包含动画时间轴，只需要调整该函数即可
path = os.path.dirname(os.path.abspath(__file__)) + r'\functions\3\scene.mcfunction'
#*** 起止 ***
start = -1
end = -1
#*** 时间偏移量 ***
shift = 120

def adjustment(s):
    m = int(s)
    a = m <= end or end == -1
    b = m >= start or start == -1
    if a and b:
        return(str(m+shift))
    else:
        return s
with open(path, 'r+') as f:
    lines = []
    for line in f.readlines():
        ln = line
        ret = re.search(pattern, line)
        if ret:
            ln = line.replace(ret.group(2),adjustment(ret.group(2)))
        print(ln)
        lines.append(ln)
        f.seek(0)
        f.truncate()
        f.writelines(lines)