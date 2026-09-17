def solution(n):
    answer = []
    while True:
        if not answer:
            answer.append(n)
        elif n%2 ==0:
            n=n/2
            answer.append(n)
        elif n==1:
            break
        else:
            n=3*n+1
            answer.append(n)
    return answer