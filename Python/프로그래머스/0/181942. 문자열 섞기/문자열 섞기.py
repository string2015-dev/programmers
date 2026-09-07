def solution(str1, str2):
    str_origin1 = [s1 for s1 in str1]
    str_origin2 = [s2 for s2 in str2]
    new_str = "".join([str_origin1[i]+str_origin2[i] for i in range(len(str1))])
    
    answer = new_str
    return answer


    