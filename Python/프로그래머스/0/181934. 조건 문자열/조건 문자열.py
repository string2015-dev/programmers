def solution(ineq, eq, n, m):
    if eq == "=":
        return int(n >= m if ineq == ">" else n <= m)
    else:
        return int(n > m if ineq == ">" else n < m)
    