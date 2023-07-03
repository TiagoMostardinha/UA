# Basics for Antlr4 Project:

1. **BUILD:**   `antlr4-build`
    - **TEST:** `antlr4-test Hello stat`
2. **VISITOR or LISTENER:**
    1. **VISITOR:** `antlr4-visitor <grammar> <visitor-name> <visitor-type>`
    2. **LISTENER:** `antlr4-listener <listener-name>`
3. **MAIN:**    `antlr4-main -i -v <visitor.java>`
    - **compilador**    `antlr4-main -v <visitor.java>`
4. **BUILD:**   `antlr4-build`
5. **RUN:**     `antlr4-run`

# Testing Grammar
`antlr4-test Calculator program -gui < test.txt`
`antlr4-test Frac program < frac.txt`

# CLEAN
`antlr4-clean`