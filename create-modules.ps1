# Array of module names
$modules = @("zusammenstellungen", "beispiel1", "beispiel2", "beispiel3", "beispiel4")

# Loop through each module name
foreach ($module in $modules) {
    # Generate module with routing
    ng generate module /$module --routing

    # Generate component within the module and 
    ng generate component /$module/$module --flat --standalone false

     # Generate edit component within the module and flatten the structure
     ng generate component /$module/$module-edit  --standalone false

     # Generate search component within the module and flatten the structure
     ng generate component /$module/$module-search --standalone false
}

Write-Output "Modules and components have been created."
