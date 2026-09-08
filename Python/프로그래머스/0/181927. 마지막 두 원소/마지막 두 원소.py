def solution(num_list):
    num_list2= sorted(list(enumerate(num_list)),reverse = True)
    if num_list2[0][1]>num_list2[1][1]:
        num_list.append(num_list2[0][1]-num_list2[1][1])
    else: num_list.append(num_list2[0][1]*2)
    return num_list