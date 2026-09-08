def solution(num_list):
    total = sum(num for num in num_list)
    sque ="*".join(map(str,num_list))
    sque = eval(sque)
    answer = 0 if total**2<sque else 1
    return answer