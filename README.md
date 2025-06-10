# Salesforce Platform Developer I - Exam Prep

This repository provides instructions, project configurations, and example code for creating custom triggers, classes, and queries in Salesforce Apex.

## Local Set Up

### Configure Your Salesforce DX Project

The `sfdx-project.json` configuration information.

See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) for details about this file.

### Installation

- Install with npm

```bash
  npm install
```

### Ensure Salesforce CLI is installed

- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)

- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)

### Set up Environment

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)

- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)

## Run Locally

#### Clone the project

```bash
  git clone git@github.com:chelsea-EYDS/SF.git
```

#### Go to the project directory

```bash
  cd my-project
```

#### Install dependencies

```bash
  npm install
```

#### Connect Your Org

```CMD + Shift + P
SFDX: Authorize an Org
```

#### Deploy Source to Org

Right click on project directory and choose:

`SFDX: Deploy this Source to Org`
