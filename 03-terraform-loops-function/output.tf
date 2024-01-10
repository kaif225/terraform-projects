#output "p_ip" {
 # value = aws_instance.myec2.public_ip
#}

#output "public_dns" {
#  value = aws_instance.myec2.public_dns

#}

output "for_output_list" {
  
  value = [for instance in aws_instance.myec2: instance.public_dns]

}

output "for_output_map" {
  
  value = {for instance in aws_instance.myec2: instance.id => instance.public_dns}


}

output "for_output_map2" {

  value = {for c, instance in aws_instance.myec2: c => instance.public_dns}
}

output "legacy_output_splat" {

  value = aws_instance.myec2.*.public_dns

}

output "latest_output_splat" {

  value = aws_instance.myec2[*].public_dns

}




