; ===================================================

; Pragma

(pragma_directive) @attribute

; ===================================================

; Comments

(comment) @comment
((comment) @preproc
 (#match? @preproc "^/// .*"))

; ===================================================

; Contract Declaration

(inheritance_specifier ancestor: (identifier) @ancestor)
(contract_declaration name: (identifier) @type)
; Handles ContractA, ContractB in function foo() override(ContractA, contractB) {}
(override_specifier (identifier) @type)

; ===================================================

; Literals

[
 (string)
 (hex_string_literal)
 (unicode_string_literal)
] @string

[
 (number_literal)
] @number

[
 (true)
 (false)
] @constant.builtin


; ===================================================

; Types

(type_name (identifier) @type)
(type_name "mapping" @type.mapping)

(primitive_type) @type

(meta_type_expression "type" @keyword)

; ===================================================

; Functions, methods and parameters

; Function definitions: `function addSalary()`
(function_definition
 function_name:  (identifier) @function.definition)

; Raw function calls like `getTokens()`
(call_expression . (identifier) @function.call)
; Field calls like `pool.*lockers*.length()`
; All fields between object and the last field are colored as fields
(member_expression  (property_identifier) @field)
; Method calls like `pool.lockers.*length()*`
; The last field is colored as method call
(call_expression . (member_expression  (property_identifier) @method.call))

; Calls like `msg.sender.call{*value*: share}("")`;
(struct_expression ((identifier) @field . ":"))

; Parameters
(parameter name: (identifier) @parameter)

; Special functions

(constructor_definition "constructor" @function.special)
(fallback_receive_definition "receive" @function.special)
(fallback_receive_definition "fallback" @function.special)


; ===================================================

; Structs

; Handles the field in struct literals like MyStruct({MyField: MyVar * 2})
(call_expression (identifier) @field . ":")

(struct_declaration
  struct_name: (identifier) @type
  )
(struct_member name: (identifier) @field)

; ===================================================

; Enums

(enum_value) @constant

(enum_declaration enum_type_name: (identifier) @type)

; ===================================================

; Modifiers

(modifier_definition
  name:  (identifier) @modifier.definition)
(modifier_invocation . (identifier) @modifier.invocation)


; ===================================================

; Events

(emit_statement . (identifier) @emit)

(event_paramater "indexed" @type)
(event_paramater name: (identifier) @parameter)

; ===================================================

; Keywords

[
 "pragma"
 "contract"
 "interface"
 "library"
 "is"
 "function"
 "return"
 "returns"
 "struct"
 "enum"
 "event"
 "assembly"
 "emit"
 "modifier"
 "var"
 (virtual)
 (override_specifier)
] @keyword

[
 "public"
 "internal"
 "private"
 "external"
 "pure"
 "view"
 "payable"
] @type.qualifier

[
 "memory"
 "storage"
 "calldata"
 (constant)
] @storageclass

[
 "for"
 "while"
 "do"
] @repeat

[
 "break"
 "continue"
 "if"
 "else"
 "switch"
 "case"
 "default"
] @conditional

[
 "try"
 "catch"
] @exception


["import" "using"] @include
(import_directive "as" @include)
(import_directive "from" @include)


; ===================================================

; Punctuation

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket


[
  "."
  ","
] @punctuation.delimiter

; Ensures that delimiters in mapping( ... => .. ) are not colored like types
(type_name
  "(" @punctuation.bracket
  "=>" @punctuation.delimiter
  ")" @punctuation.bracket)

; ===================================================

; Operators

[
  "&&"
  "||"
  ">>"
  ">>>"
  "<<"
  "&"
  "^"
  "|"
  "+"
  "-"
  "*"
  "/"
  "%"
  "**"
  "<"
  "<="
  "="
  "=="
  "!="
  "!=="
  ">="
  ">"
  "!"
  "~"
  "-"
  "+"
  "++"
  "--"
] @operator


(augmented_assignment_expression "+=" @operator)
(augmented_assignment_expression "-=" @operator)


; ===================================================

; Native constructors and destructors

[
  "delete"
  "new"
] @keyword.operator

