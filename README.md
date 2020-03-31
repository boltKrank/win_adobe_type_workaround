# win_adobe_type_workaround

Puppet tasks and manifests to provide a workaround for Windows Vulnerability ADV200006

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with win_adobe_type_workaround](#beginning-with-win_adobe_type_workaround)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

A set of 3 tasks and one plan use to implelemnt workarounds for the [ADV200006 vulnerability](https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/ADV200006). The tasks are to enact the workarounds seperately whereas the plan will perform all 3 tasks.

**CAUTION:** each of these workarounds removes some functionality, please be aware of the functionality lost before executing the task. Rollback methods are included for accidental execution.

Once the tasks have been run and the immediate workaround is in place, there are declaritive classes to enforce the state, making sure the nodes don't deviate from the fixed state.

## Setup

### Setup Requirements 

This vulnerability is only applicable to Windows version 7, 8.1, RT 8.1, 10 and Windows Server 2008 service pack 2 onwards. Do not use this module for other versions.

### Beginning with win_adobe_type_workaround

The very basic steps needed for a user to get the module up and running. This can include setup steps, if necessary, or it can be an example of the most basic use of the module.

## Usage

To immediately run the workarounds execute the following two tasks:
```
	win_adobe_type_workaround::disable_preview_details_panes
	win_adobe_type_workaround::disable_webclient
```

To declaritively enforce the workarounds, allowing Puppet to check that these aren't reverted back each time the Puppet agent runs, add these two lines to a profile:
```
	include win_adobe_type_workaround::disable_preview_pane
	include win_adobe_type_workaround::disable_webclient
```

## Limitations

Each of these workarounds removes some functionality, please be aware of the functionality lost before executing the task. Rollback methods are included for accidental execution.

## Development

Pull requests are always welcome.


