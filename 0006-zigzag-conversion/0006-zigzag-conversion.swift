class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        let s = s.map { String($0) }
        if numRows == 1 {
            return s.joined()
        }

        let n = s.count
        let sections = (Double(n) / Double(2 * numRows - 2)).rounded(.up)
        let numCols = Int(sections) * (numRows - 1)

        var matrix = [[String]](
            repeating: [String].init(repeating: "", count: numCols),
            count: numRows
        )

        var row = 0
        var column = 0
        var currentStringIndex = 0

        while currentStringIndex < n {
            // move down
            while row < numRows && currentStringIndex < n {
                matrix[row][column] = s[currentStringIndex]
                row += 1
                currentStringIndex += 1
            }

            row -= 2
            column += 1

            // move up and right
            while row > 0 && column < numCols && currentStringIndex < n {
                matrix[row][column] = s[currentStringIndex]
                row -= 1
                column += 1
                currentStringIndex += 1
            }
        }

        var answer = ""
        for arr in matrix {
            for c in arr where !c.isEmpty {
                answer += c
            }
        }

        return answer
    }
}