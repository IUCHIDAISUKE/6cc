#ifndef FUNCTION_H
#define FUNCTION_H

#include "constant.h"

void error_at(char *loc, char *fmt, ...);
void error(char *fmt, ...);
bool consume(char op);
void expect(char op);
int expect_number();
bool at_eof();
Token *new_token(TokenKind kind, Token *cur, char *str);
Node *new_node(NodeKind kind, Node *lhs, Node *rhs);
Node *new_node_num(int val);
Node *expr();
Node *mul();
Node *primary();
Node *unary();
void gen(Node *node);
Token *tokenize();

#endif /* FUNCTION_H */
