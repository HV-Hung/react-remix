import json

def update_version(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
    
    version = data['version']
    major, minor, patch = map(int, version.split('.'))
    patch += 1
    new_version = f"{major}.{minor}.{patch}"
    
    data['version'] = new_version
    
    with open(file_path, 'w') as file:
        json.dump(data, file, indent=2)

update_version('package.json')