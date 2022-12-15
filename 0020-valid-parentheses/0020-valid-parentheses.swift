class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for character in s {
            switch character {
            case "(", "{", "[":
                stack.append(character)
            case ")":
                if stack.last == "(" {
                    stack.removeLast()
                } else { return false }

            case "}":
                if stack.last == "{" {
                    stack.removeLast()
                } else { return false }

            case "]":
                if stack.last == "[" {
                    stack.removeLast()
                } else { return false }

            default: break
            }
        }

        return stack.isEmpty
    }
}