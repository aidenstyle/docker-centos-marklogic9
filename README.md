## 1. Download Marklogic installer from [MarkLogic official website](https://developer.marklogic.com/products).

### Red Hat Enterprise Linux / CentOS, Version 7
* MarkLogic Server x64 (AMD64, Intel EM64T) 64-bit Linux RPM
* Converters & Filters for Linux

## 2. Change the name of the installer file.

* `MarkLogic-9.*.x86_64.rpm` rename to `MarkLogic9.rpm`
* `MarkLogicConverters-9.*.x86_64.rpm` rename to `rename to MarkLogic9.rpm`

## 3. Move the Insaller file under the `installer` folder.

## 4. Run Docker Build.

```bash
docker build -t aidenlee/centos7-marklogic9 .
```
