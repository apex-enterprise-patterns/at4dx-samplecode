# AT4DX Sample Code

The files in this project are various example implementations of the *Advanced Techniquies for Salesforce DX* (aka AT4DX) framework.

**Dependencies:** Must deploy [AT4DX](https://github.com/imjohnmdaniel/at4dx) before deploying this code.
* For more information on how to setup the AT4DX Framework, please refer to the [Environment Setup WIKI page](https://github.com/ImJohnMDaniel/at4dx/wiki/Environment-Setup). 
* To install the AT4DX Framework, excute the following command after the environment is setup.
  * sfdx shane:github:src:install -c -g ImJohnMDaniel -r at4dx -p sfdx-source/core -u at4dxsamplecode

For more information on the AT4DX framework and related concepts, please refer to the [AT4DX](https://github.com/imjohnmdaniel/at4dx) project.

Project Folders
---------------
The "core" framework is found in [AT4DX](https://github.com/imjohnmdaniel/at4dx) project.  This includes the following:

| Folder | Description |
| ------ | ----------- |
| **core** | Core library, contains  |

The "samples" of how to use the framework can be found in this project.

| Folder | Description |
| ------ | ----------- |
| **reference-implementation-common** | Sample application using the API and Components to inject Apex, VF and Lightning at runtime |
| **reference-implementation-sales** | Sample package providing impls for various bindings above |
| **reference-implementation-marketing** | Sample package providing impls for various bindings above |
| **reference-implementation-service** | Sample basic trigger framework leveraging the API |
