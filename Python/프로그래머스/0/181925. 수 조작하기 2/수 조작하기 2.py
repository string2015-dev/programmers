def solution(numLog):
    words = ""
    rev = list(numLog)
    for i in range(len(numLog)-1):
        if rev[i]-rev[i+1] == 1:
            words+="s"
        elif rev[i]-rev[i+1] == -1:
            words+="w"
        elif rev[i]-rev[i+1] == 10:
            words+="a"
        elif rev[i]-rev[i+1] ==-10:
            words +="d"
    return words