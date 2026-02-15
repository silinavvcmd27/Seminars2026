#!/bin/bash
if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi

mkdir -p "$1"/{data,scripts,results}
touch "$1"/data/raw_data.txt
chmod 600 "$1"/data/raw_data.txt

cat > "$1"/scripts/run_analysis.sh << 'INNEREOF'
#!/bin/bash
echo "Hello from $1"
INNEREOF

chmod +x "$1"/scripts/run_analysis.sh
echo "Project $1 created successfully!"
