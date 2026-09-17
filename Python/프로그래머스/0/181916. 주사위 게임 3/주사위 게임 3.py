def solution(a, b, c, d):
    answer = 0
    l=[a,b,c,d]
    s=set(l)
    li=list(s)
    if len(s)==1:
        answer=1111*a
    elif len(s)==2:
        for i in range(2):
            if l.count(li[0])==3:
                answer=(10*li[0]+li[1])**2
            elif l.count(li[1])==3:
                answer=(10*li[1]+li[0])**2
            elif l.count(li[1])==2:
                answer=(li[0]+li[1])*abs(li[0]-li[1])
    elif len(s)==3:
        j=1
        for i in l:
            if l.count(i)==2:
                li.remove(i)
                answer=li[0]*li[1]
                break
    else: answer=min(l)
    return answer