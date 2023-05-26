# A temporal demo

## Installation
### Install the dependencies
```bash
bundle install
```
### Install the Temporal development server
```bash
brew install temporal
```

https://learn.temporal.io/getting_started/typescript/dev_environment/

## Usage

### Start the Temporal server
```bash
temporal server start-dev
```

### Start the worker
```bash
bundle exec ruby worker.rb
```

### Try out some of the triggers
```bash
bundle exec ruby workflows/hello/hello_trigger.rb
```
