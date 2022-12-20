resource "azurerm_resource_group" "client_we_rg_environmentname"
{
 name = "name"
 location = "westeurope"
 tags = {
   buc = var.tag_buc
  webhoo = var.tag_webhook
}
}