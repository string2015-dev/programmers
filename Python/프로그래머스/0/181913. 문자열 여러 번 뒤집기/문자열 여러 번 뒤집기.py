def solution(my_string, queries):
    for q in queries:
        a = q[0]
        b = q[1]
        
        front = my_string[:a]             # 0 ~ a-1
        back = my_string[b+1:]            # ← 수정 1: b가 아니라 b+1
        middle = my_string[a:b+1][::-1]   # ← 수정 2: a+1이 아니라 a
        my_string = front + middle + back
    return my_string
