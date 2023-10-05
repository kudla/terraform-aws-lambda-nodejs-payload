output "payload_path" {
  value = data.archive_file.payload.output_path
}

output "code_hash" {
  value = data.archive_file.payload.output_base64sha256
}

