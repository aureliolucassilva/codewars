def iq_test(numbers):
    odd = []
    even = []
    oddCount = 0
    evenCount = 0
    numbersList = list(map(int, numbers.split()))
    numbersSize = len(numbersList)

    for idx in range(numbersSize):
        # Odd x Even
        if numbersList[idx] % 2 == 0:
            odd.append(idx + 1)
            oddCount += 1
        else:
            even.append(idx + 1)
            evenCount += 1

        # Break
        if evenCount >= 2 and oddCount == 1:
            return odd[0]
        elif oddCount >= 2 and evenCount == 1:
            return even[0]
        else:
            continue
