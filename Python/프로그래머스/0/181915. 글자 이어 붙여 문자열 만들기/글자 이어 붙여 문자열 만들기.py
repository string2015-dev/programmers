def solution(my_string, index_list):
    li = [str(my_string[i]) for i in index_list]
    answer = ''.join(li)
    return answer