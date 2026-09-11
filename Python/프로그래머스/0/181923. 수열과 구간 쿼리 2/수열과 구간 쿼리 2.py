def solution(arr, queries):
    answer = []
    for s,e,k in queries:
        array =[]
        array =[arr[i] for i in range(len(arr)) if s<=i<=e and arr[i] > k]
        if not array:
            answer.append(-1)
        else: answer.append(min(array))
    return answer