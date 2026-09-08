def solution(a, d, included):
    answer = total = sum(a+d*i for i in range(len(included)) if included[i])
    return answer