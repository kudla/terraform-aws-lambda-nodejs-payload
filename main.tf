resource "null_resource" "install" {

  triggers = {
    package_json = "${base64sha256(file("${var.code_base}/package.json"))}"
  }

  provisioner "local-exec" {
    command = "cd '${var.code_base}' && npm install --production"
  }
}

data "external" "code_base" {
  program = ["echo", "{\"value\":\"${var.code_base}\"}"]

  depends_on = [
    "null_resource.install"
  ]
}

data "archive_file" "payload" {
    type = "zip"
    source_dir = "${lookup(data.external.code_base.result, "value")}"
    output_path = "${path.module}/.terraform/.dist/${local.code_base_escaped}.zip"
}
