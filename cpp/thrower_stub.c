#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/fail.h>
#include <caml/memory.h>
#include <caml/alloc.h>

#include "libthrower.h"

CAMLprim value
caml_thrower(value unit) {
  CAMLparam1(unit);
  throw_and_catch_exn();
  CAMLreturn(Val_unit);
}
