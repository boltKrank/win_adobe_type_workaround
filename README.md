# win_adobe_type_workaround

Welcome to your new module. A short overview of the generated parts can be found in the PDK documentation at https://puppet.com/pdk/latest/pdk_generating_modules.html .

The README template below provides a starting point with details about what information to include in your README.

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with win_adobe_type_workaround](#setup)
    * [What win_adobe_type_workaround affects](#what-win_adobe_type_workaround-affects)
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

### What win_adobe_type_workaround affects **OPTIONAL**

If it's obvious what your module touches, you can skip this section. For example, folks can probably figure out that your mysql_instance module affects their MySQL instances.

If there's more that they should know about, though, this is the place to mention:

* Files, packages, services, or operations that the module will alter, impact, or execute.
* Dependencies that your module automatically installs.
* Warnings or other important notices.

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

## Reference

This section is deprecated. Instead, add reference information to your code as Puppet Strings comments, and then use Strings to generate a REFERENCE.md in your module. For details on how to add code comments and generate documentation with Strings, see the Puppet Strings [documentation](https://puppet.com/docs/puppet/latest/puppet_strings.html) and [style guide](https://puppet.com/docs/puppet/latest/puppet_strings_style.html)

If you aren't ready to use Strings yet, manually create a REFERENCE.md in the root of your module directory and list out each of your module's classes, defined types, facts, functions, Puppet tasks, task plans, and resource types and providers, along with the parameters for each.

For each element (class, defined type, function, and so on), list:

  * The data type, if applicable.
  * A description of what the element does.
  * Valid values, if the data type doesn't make it obvious.
  * Default value, if any.

For example:

```
### `pet::cat`

#### Parameters

##### `meow`

Enables vocalization in your cat. Valid options: 'string'.

Default: 'medium-loud'.
```

## Limitations

Each of these workarounds removes some functionality, please be aware of the functionality lost before executing the task. Rollback methods are included for accidental execution.

## Development

Pull requests are always welcome.


