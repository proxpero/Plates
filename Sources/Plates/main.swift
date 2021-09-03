import ArgumentParser
import ShellOut

struct Plates: ParsableCommand {

    @Option(
        name: .shortAndLong,
        help: ""
    )
    private var letters: String

    func run() throws {
        let chars = letters.map { String($0) }

        // grep 'j.*j.*l' /usr/share/dict/words
        let regex = "'\(chars[0]).*\(chars[1]).*\(chars[2])'"
        let dict = "/usr/share/dict/words"
        let output = try shellOut(to: "grep", arguments: [regex, dict])
        print(output)
    }
}

Plates.main()
