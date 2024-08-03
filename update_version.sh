import json

def update_version(file_path):
    # Step 1: Read the package.json file
    with open(file_path, 'r') as file:
        data = json.load(file)
    
    # Step 2: Extract and increment the patch version
    version = data['version']
    major, minor, patch = map(int, version.split('.'))
    patch += 1
    new_version = f"{major}.{minor}.{patch}"
    
    # Step 3: Update the version
    data['version'] = new_version
    
    # Step 4: Write back to the package.json file
    with open(file_path, 'w') as file:
        json.dump(data, file, indent=2)

# Example usage
update_version('package.json')