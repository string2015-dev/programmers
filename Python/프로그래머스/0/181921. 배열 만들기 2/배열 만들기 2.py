def solution(l, r):
    answer = []
    for i in range(l,r+1):
        zero_five = str(i)
        if set(zero_five) <= {'0','5'}:
            zero_five=int(zero_five)
            answer.append(zero_five)
    if not answer:
        answer.append(-1)
    return answer