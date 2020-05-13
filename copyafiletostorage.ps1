$storageAccount = Get-AzStorageAccount -ResourceGroupName "grafana" -AccountName "stacgrafanawebsite01"
$ctx = $storageAccount.Context

# upload a file
set-AzStorageblobcontent -File "<path-to-file>" `
-Container `$web `
-Blob "<blob-name>" `
-Context $ctx