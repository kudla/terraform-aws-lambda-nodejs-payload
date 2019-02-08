output "payload_path" {
  value = "${path.module}/.terraform/.dist/${var.code_base}.zip"
}

output "code_hash" {
  value = "${data.archive_file.payload.output_base64sha256}"
}

