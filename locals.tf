locals {
  updir_pattern = "/(^|/)\\.\\.(/|$)/"
  updir_alias = "$1--up--$2"
  # replace twice for consiquent /../../ chains
  # no lookahead support
  code_base_escaped = replace(replace(var.code_base, local.updir_pattern, local.updir_alias), local.updir_pattern, local.updir_alias)
}
