output "custom_greeting_message" {
  value = data.template_file.greeting.rendered
}
