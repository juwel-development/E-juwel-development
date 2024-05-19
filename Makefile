init:
	- echo "Initializing project..."
	- chmod +x ./scripts/init.sh
	- ./scripts/init.sh

start:
	- echo "Starting project..."
	- npm start --prefix ./apps/juwel-dev & npm start --prefix ./packages/beautiful-logger & npm start --prefix ./packages/react-observable-tools