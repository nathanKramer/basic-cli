app "task-list"
    packages { pf: "../platform/main.roc" }
    imports [pf.Stdout, pf.Task.{ Task }]
    provides [main] to pf


main : Task {} I32
main =

    authors : List Str
    authors = [
        "Foo",
        "Bar",
        "Baz",
    ]

    _ <- Task.list authors Stdout.line |> Task.await

    Task.forEach authors Stdout.line