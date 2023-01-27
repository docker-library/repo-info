# `jetty:11.0.13-jdk11-amazoncorretto`

## Docker Metadata

- Image ID: `sha256:ee5940c5ebf45d8713cbe3985dacdf1a9af72211a88650705ccc0df709a2d439`
- Created: `2023-01-18T21:09:41.391013398Z`
- Virtual Size: ~ 481.50 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/docker-entrypoint.sh"]`
- Command: `["java","-jar","/usr/local/jetty/start.jar"]`
- Environment:
  - `PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto`
  - `JETTY_VERSION=11.0.13`
  - `JETTY_HOME=/usr/local/jetty`
  - `JETTY_BASE=/var/lib/jetty`
  - `TMPDIR=/tmp/jetty`
  - `JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/11.0.13/jetty-home-11.0.13.tar.gz`
  - `JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E 	F254B35617DC255D9344BCFA873A8E86B4372146`

## `rpm` (`.rpm`-based packages)

### `rpm` package: `amazon-linux-extras-2.0.1-1.amzn2.noarch`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url amazon-linux-extras-2.0.1-1.amzn2.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/33255f7ce6624faa700abeb045a4534458b38aeac853d4b9c7c01eead702856a/amazon-linux-extras-2.0.1-1.amzn2.src.rpm
```

### `rpm` package: `audit-libs-2.8.1-3.amzn2.1.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url audit-libs-2.8.1-3.amzn2.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6af950cd493703410c3c041e3343bf1618b94f4f5a2e72976d8ab1d31f625871/audit-2.8.1-3.amzn2.1.src.rpm
```

### `rpm` package: `basesystem-10.0-7.amzn2.0.1.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url basesystem-10.0-7.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/303ffc769b33bd06f7d3c5d0a1999079ad5afb6d205448dd607a8b6a5cbc3551/basesystem-10.0-7.amzn2.0.1.src.rpm
```

### `rpm` package: `bash-4.2.46-34.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url bash-4.2.46-34.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/088b4acd2aa66aac9479237b6c06724ef38173941734da6a81fb28add6418143/bash-4.2.46-34.amzn2.src.rpm
```

### `rpm` package: `bzip2-libs-1.0.6-13.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url bzip2-libs-1.0.6-13.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/5eb7c8b4ed1b326f5e640d655f92f498451c8013b223ad5702abb108358ef0dc/bzip2-1.0.6-13.amzn2.0.3.src.rpm
```

### `rpm` package: `ca-certificates-2021.2.50-72.amzn2.0.3.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url ca-certificates-2021.2.50-72.amzn2.0.3.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/51340102b58ac29c4fd89233330f5aa4a3f2fe61aad0d9d5b8c5b643692afd6b/ca-certificates-2021.2.50-72.amzn2.0.3.src.rpm
```

### `rpm` package: `chkconfig-1.7.4-1.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url chkconfig-1.7.4-1.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/227e42c03e4cdcc55a1851cfe633f2a280cb53eea907a581d95422575f584465/chkconfig-1.7.4-1.amzn2.0.2.src.rpm
```

### `rpm` package: `coreutils-8.22-24.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url coreutils-8.22-24.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/7785c3a49bafaa745c01233429d6dab66539416864de241fb29aea434a29dcb2/coreutils-8.22-24.amzn2.src.rpm
```

### `rpm` package: `cpio-2.11-28.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url cpio-2.11-28.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/b567960170c409a145333888e05daa9569564d37bd31df920c75c09ef5b710df/cpio-2.11-28.amzn2.src.rpm
```

### `rpm` package: `curl-7.79.1-7.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url curl-7.79.1-7.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/9b2a2ae3895c19f94bb79c05648d34172cfd5a598b12bd3bd11a2f9b23c05c9a/curl-7.79.1-7.amzn2.0.1.src.rpm
```

### `rpm` package: `cyrus-sasl-lib-2.1.26-24.amzn2.x86_64`

Licenses (from `rpm --query`): BSD with advertising

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-lib-2.1.26-24.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/3d9de0f7ecb9ee20cf3eeccde9bd3f335ba6aa86b07f1fb45c6d7fdb7edf854a/cyrus-sasl-2.1.26-24.amzn2.src.rpm
```

### `rpm` package: `dejavu-fonts-common-2.33-6.amzn2.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-fonts-common-2.33-6.amzn2.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/2c78ae75ee92a19e0ecbd2d6f1b1e6c343e2c8357057617fb7a03438fcff9ce0/dejavu-fonts-2.33-6.amzn2.src.rpm
```

### `rpm` package: `dejavu-sans-fonts-2.33-6.amzn2.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-sans-fonts-2.33-6.amzn2.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/2c78ae75ee92a19e0ecbd2d6f1b1e6c343e2c8357057617fb7a03438fcff9ce0/dejavu-fonts-2.33-6.amzn2.src.rpm
```

### `rpm` package: `diffutils-3.3-5.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url diffutils-3.3-5.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/3b94189bd4a0bbb334c887b5a7306f5cbe927e45ca9a9c1e68e6466570b7a4e1/diffutils-3.3-5.amzn2.src.rpm
```

### `rpm` package: `elfutils-libelf-0.176-2.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-libelf-0.176-2.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/7f6cc4b60d3a0fb8499726d64a830d91c97b301955f44418c3f1de3fb6304228/elfutils-0.176-2.amzn2.src.rpm
```

### `rpm` package: `expat-2.1.0-15.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url expat-2.1.0-15.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/54d23d96582316dac7c8f9b291ff24d40126999b631d71754dfc8293fdc0bc25/expat-2.1.0-15.amzn2.0.2.src.rpm
```

### `rpm` package: `file-libs-5.11-36.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url file-libs-5.11-36.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6826885873bb4ef8f4d7479ffbfbceb96807ae298e2f0a9a083022200ca7caab/file-5.11-36.amzn2.0.1.src.rpm
```

### `rpm` package: `filesystem-3.2-25.amzn2.0.4.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url filesystem-3.2-25.amzn2.0.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/c1bdb520a838326c15c1c86b0a1314c9e44f7689de956010d7a8e4bfda7d34e4/filesystem-3.2-25.amzn2.0.4.src.rpm
```

### `rpm` package: `findutils-4.5.11-6.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url findutils-4.5.11-6.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/8cb38ddd3353da1ca38e2748e4affeb61a422044bf26c05f93cd0e20d83b125d/findutils-4.5.11-6.amzn2.src.rpm
```

### `rpm` package: `fontconfig-2.13.0-4.3.amzn2.x86_64`

Licenses (from `rpm --query`): MIT and Public Domain and UCD

Source:

```console
$ dnf --quiet download --source --url fontconfig-2.13.0-4.3.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/d27fa964cbcbbd78a2cd17349b255f37d6fa44876c0186ffd4b05c63d6aae827/fontconfig-2.13.0-4.3.amzn2.src.rpm
```

### `rpm` package: `fontpackages-filesystem-1.44-8.amzn2.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url fontpackages-filesystem-1.44-8.amzn2.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/a7c49b56992c5deec79f1d6b1cadaf4a1210c7f5cefea9dab4b353e83eeb6ab5/fontpackages-1.44-8.amzn2.src.rpm
```

### `rpm` package: `freetype-2.8-14.amzn2.1.x86_64`

Licenses (from `rpm --query`): (FTL or GPLv2+) and BSD and MIT and Public Domain and zlib with acknowledgement

Source:

```console
$ dnf --quiet download --source --url freetype-2.8-14.amzn2.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6d823c73999355231a92f651c352ef84fbbe1c4faea18662b755e3bf33be45df/freetype-2.8-14.amzn2.1.src.rpm
```

### `rpm` package: `gawk-4.0.2-4.amzn2.1.2.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPL and LGPLv3+ and LGPL and BSD

Source:

```console
$ dnf --quiet download --source --url gawk-4.0.2-4.amzn2.1.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/20e168961dd7975b2be268b247219eb2e7a1bef49898ad360ffae2833d76ad1c/gawk-4.0.2-4.amzn2.1.2.src.rpm
```

### `rpm` package: `gdbm-1.13-6.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gdbm-1.13-6.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/e2866f1817e24bcd350768bf85c8bbddde135513ced29ce315df75f311cf77cf/gdbm-1.13-6.amzn2.0.2.src.rpm
```

### `rpm` package: `glib2-2.56.1-9.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url glib2-2.56.1-9.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/537aafe4cf68cea22ab5412acfe3a1febc5525de48f0bd82d10ea71e7e916899/glib2-2.56.1-9.amzn2.0.2.src.rpm
```

### `rpm` package: `glibc-2.26-62.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+

Source:

```console
$ dnf --quiet download --source --url glibc-2.26-62.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0b7007ce9eb6ef4459981a7c1f94cc9e2db04d3f8a101b5d1c506b86596680d3/glibc-2.26-62.amzn2.src.rpm
```

### `rpm` package: `glibc-common-2.26-62.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+

Source:

```console
$ dnf --quiet download --source --url glibc-common-2.26-62.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0b7007ce9eb6ef4459981a7c1f94cc9e2db04d3f8a101b5d1c506b86596680d3/glibc-2.26-62.amzn2.src.rpm
```

### `rpm` package: `glibc-langpack-en-2.26-62.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+

Source:

```console
$ dnf --quiet download --source --url glibc-langpack-en-2.26-62.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0b7007ce9eb6ef4459981a7c1f94cc9e2db04d3f8a101b5d1c506b86596680d3/glibc-2.26-62.amzn2.src.rpm
```

### `rpm` package: `glibc-minimal-langpack-2.26-62.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+

Source:

```console
$ dnf --quiet download --source --url glibc-minimal-langpack-2.26-62.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0b7007ce9eb6ef4459981a7c1f94cc9e2db04d3f8a101b5d1c506b86596680d3/glibc-2.26-62.amzn2.src.rpm
```

### `rpm` package: `gmp-6.0.0-15.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url gmp-6.0.0-15.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/712fffd161eb394310f7fe5f7d41ae2aae07cdcce27ca119bf04c6f056eb2b4d/gmp-6.0.0-15.amzn2.0.2.src.rpm
```

### `rpm` package: `gnupg2-2.0.22-5.amzn2.0.5.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gnupg2-2.0.22-5.amzn2.0.5
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/189e1bdc950a8e13918173d73835981842c90ee3b3cef07c116152a00b8b8a59/gnupg2-2.0.22-5.amzn2.0.5.src.rpm
```

### `rpm` package: `gpg-pubkey-b04f24e3-5de94a19`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpg-pubkey-c87f5b1a-593863f8`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpgme-1.3.2-5.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url gpgme-1.3.2-5.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/81074517b77553b2abbdc13fb0637c599a4c32f25ff85e6e00a9761fbd961d9f/gpgme-1.3.2-5.amzn2.0.2.src.rpm
```

### `rpm` package: `grep-2.20-3.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url grep-2.20-3.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6a1fd83c54bc7f4701e6b979d8f5dcc9950e2b5116cbb1c27057f412bed54390/grep-2.20-3.amzn2.0.2.src.rpm
```

### `rpm` package: `gzip-1.5-10.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GFDL

Source:

```console
$ dnf --quiet download --source --url gzip-1.5-10.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/073c2dbe9b6abb1bfeb13882372463c92385805502ccf659e093c5d4b2c3d62e/gzip-1.5-10.amzn2.0.1.src.rpm
```

### `rpm` package: `info-5.1-5.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url info-5.1-5.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/968c079ef8a8a2efee76ff59cd99e06dd242b8813960171d0f5c23f4a6eb0bb2/texinfo-5.1-5.amzn2.src.rpm
```

### `rpm` package: `java-11-amazon-corretto-devel-11.0.18.10-1.x86_64`

Licenses (from `rpm --query`): ASL 1.1 and ASL 2.0 and BSD and BSD with advertising and GPL+ and GPLv2 and GPLv2 with exceptions and IJG and LGPLv2+ and MIT and MPLv2.0 and Public Domain and W3C and zlib and ISC and FTL and RSA.

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `keyutils-libs-1.5.8-3.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url keyutils-libs-1.5.8-3.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/1579dc52bd90d64e68d663da4dfa4462afa9df1cfbef30d47b64add0dd12210e/keyutils-1.5.8-3.amzn2.0.2.src.rpm
```

### `rpm` package: `krb5-libs-1.15.1-37.amzn2.2.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url krb5-libs-1.15.1-37.amzn2.2.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6952b716c976161cbd0bd332d174c32447dc07fbc79e63791eedb500168a2002/krb5-1.15.1-37.amzn2.2.4.src.rpm
```

### `rpm` package: `libacl-2.2.51-14.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libacl-2.2.51-14.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/d21969f8fbccf539fa601961f20352b7c95b4cf593c9fa5dad2ac4896c7ca6c9/acl-2.2.51-14.amzn2.src.rpm
```

### `rpm` package: `libassuan-2.1.0-3.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libassuan-2.1.0-3.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/27b0138d028a9ba30c43384ce6b2d1314d0ac3a6284c6793655c5589893d47ee/libassuan-2.1.0-3.amzn2.0.2.src.rpm
```

### `rpm` package: `libattr-2.4.46-12.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libattr-2.4.46-12.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/370b7813e0e86fadc241a9fb590451372429f0fe3ab17d62a4378b49089f8158/attr-2.4.46-12.amzn2.0.2.src.rpm
```

### `rpm` package: `libblkid-2.30.2-2.amzn2.0.10.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libblkid-2.30.2-2.amzn2.0.10
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/f61bb36e2a824c56255b05804dfbbbcc91f78206959850c222e1777866dfb8a3/util-linux-2.30.2-2.amzn2.0.10.src.rpm
```

### `rpm` package: `libcap-2.54-1.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2

Source:

```console
$ dnf --quiet download --source --url libcap-2.54-1.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/9506a32eb696ab4f98e895d6b89a80ab76cf7674eb2eba3221e10ace4844b77e/libcap-2.54-1.amzn2.0.1.src.rpm
```

### `rpm` package: `libcap-ng-0.7.5-4.amzn2.0.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libcap-ng-0.7.5-4.amzn2.0.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/b9685dfd18da9e00613cda24f60b48a09e3b4695dd6131e5e4ce4de70b90e95c/libcap-ng-0.7.5-4.amzn2.0.4.src.rpm
```

### `rpm` package: `libcom_err-1.42.9-19.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcom_err-1.42.9-19.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/cdaf4c4c0124e55017cfd1c72a24450c9b0652ba3dab8a3dc9b49c120d634f76/e2fsprogs-1.42.9-19.amzn2.0.1.src.rpm
```

### `rpm` package: `libcrypt-2.26-62.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+

Source:

```console
$ dnf --quiet download --source --url libcrypt-2.26-62.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0b7007ce9eb6ef4459981a7c1f94cc9e2db04d3f8a101b5d1c506b86596680d3/glibc-2.26-62.amzn2.src.rpm
```

### `rpm` package: `libcurl-7.79.1-7.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcurl-7.79.1-7.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/9b2a2ae3895c19f94bb79c05648d34172cfd5a598b12bd3bd11a2f9b23c05c9a/curl-7.79.1-7.amzn2.0.1.src.rpm
```

### `rpm` package: `libdb-5.3.21-24.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat

Source:

```console
$ dnf --quiet download --source --url libdb-5.3.21-24.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6a07a0476eadc4a9948fa0985711becd678027168f34c4c53838da1d6335f9ff/libdb-5.3.21-24.amzn2.0.3.src.rpm
```

### `rpm` package: `libdb-utils-5.3.21-24.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat

Source:

```console
$ dnf --quiet download --source --url libdb-utils-5.3.21-24.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6a07a0476eadc4a9948fa0985711becd678027168f34c4c53838da1d6335f9ff/libdb-5.3.21-24.amzn2.0.3.src.rpm
```

### `rpm` package: `libffi-3.0.13-18.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): MIT and Public Domain

Source:

```console
$ dnf --quiet download --source --url libffi-3.0.13-18.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6d795273d9b8725efa8069ecb46398043d7100cfd4979b9c31489e35504e31f7/libffi-3.0.13-18.amzn2.0.2.src.rpm
```

### `rpm` package: `libgcc-7.3.1-15.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libgcc-7.3.1-15.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/21edbcc0788a5dfd4973bd1f73e13cc09cbb89952d94c4e371a3e8f4ae1b9625/gcc-7.3.1-15.amzn2.src.rpm
```

### `rpm` package: `libgcrypt-1.5.3-14.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgcrypt-1.5.3-14.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/86f0a2bd76acd4f1460e1e52a2d34502480808da4e76a2a1bf835dba805b5d21/libgcrypt-1.5.3-14.amzn2.0.3.src.rpm
```

### `rpm` package: `libgpg-error-1.12-3.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgpg-error-1.12-3.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/997de9d51396f20df5b00b7f41a4bc110b88c5243225ff5941026174850a6e6e/libgpg-error-1.12-3.amzn2.0.3.src.rpm
```

### `rpm` package: `libidn2-2.3.0-1.amzn2.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or LGPLv3+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libidn2-2.3.0-1.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/12635dd70a57fde4e0cf0238f4cbe5918a7f305f5f15edb0daaf07f35428fde1/libidn2-2.3.0-1.amzn2.src.rpm
```

### `rpm` package: `libmetalink-0.1.3-13.amzn2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libmetalink-0.1.3-13.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/af0aec2e615d0ff03b96fd674c80f28b00f2d198951b2e418ec80956b87aa389/libmetalink-0.1.3-13.amzn2.src.rpm
```

### `rpm` package: `libmount-2.30.2-2.amzn2.0.10.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmount-2.30.2-2.amzn2.0.10
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/f61bb36e2a824c56255b05804dfbbbcc91f78206959850c222e1777866dfb8a3/util-linux-2.30.2-2.amzn2.0.10.src.rpm
```

### `rpm` package: `libnghttp2-1.41.0-1.amzn2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libnghttp2-1.41.0-1.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0aeaff758cdbf0d80533935b2e5b3f9a6f8fe5bdb9464008ceee2073e12084bd/nghttp2-1.41.0-1.amzn2.src.rpm
```

### `rpm` package: `libpng-1.5.13-8.amzn2.x86_64`

Licenses (from `rpm --query`): zlib

Source:

```console
$ dnf --quiet download --source --url libpng-1.5.13-8.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/720670090e9da15bd9f60e8f1dc38a55d3663dd2277ed7b27fb7b567a1c39d39/libpng-1.5.13-8.amzn2.src.rpm
```

### `rpm` package: `libselinux-2.5-12.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-2.5-12.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/0be2744b0f89765b31cecb119ca520449eb8cf48cd7355824f7ca4e0873deec3/libselinux-2.5-12.amzn2.0.2.src.rpm
```

### `rpm` package: `libsemanage-2.5-11.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsemanage-2.5-11.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/eb5fb285756eced1c16757805bfe608a70a745fe4e3c61cd1fc230f2c4786ae8/libsemanage-2.5-11.amzn2.src.rpm
```

### `rpm` package: `libsepol-2.5-8.1.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsepol-2.5-8.1.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/c5597168fd76decdd14b8c307ea2ab87a22f7e2236cf9c2ff4cf438c0e6d4120/libsepol-2.5-8.1.amzn2.0.2.src.rpm
```

### `rpm` package: `libssh2-1.4.3-12.amzn2.2.3.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libssh2-1.4.3-12.amzn2.2.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/ef9036126023044ebfb64786bbf29621695f9fd357830ccf39bebb19932fdde0/libssh2-1.4.3-12.amzn2.2.3.src.rpm
```

### `rpm` package: `libstdc++-7.3.1-15.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv3+ with exceptions and GPLv2+ with exceptions and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url libstdc++-7.3.1-15.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/21edbcc0788a5dfd4973bd1f73e13cc09cbb89952d94c4e371a3e8f4ae1b9625/gcc-7.3.1-15.amzn2.src.rpm
```

### `rpm` package: `libtasn1-4.10-1.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtasn1-4.10-1.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/99cc7d9be4ecafa389bcb8c2d1d5456b07874ecd6d24e72a73b73a393041043a/libtasn1-4.10-1.amzn2.0.2.src.rpm
```

### `rpm` package: `libunistring-0.9.3-9.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv3+

Source:

```console
$ dnf --quiet download --source --url libunistring-0.9.3-9.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/a679646faec5cf08ced31c6b0eb872e88e1267b76b4d3a43c1e553d4446732dd/libunistring-0.9.3-9.amzn2.0.2.src.rpm
```

### `rpm` package: `libuuid-2.30.2-2.amzn2.0.10.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libuuid-2.30.2-2.amzn2.0.10
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/f61bb36e2a824c56255b05804dfbbbcc91f78206959850c222e1777866dfb8a3/util-linux-2.30.2-2.amzn2.0.10.src.rpm
```

### `rpm` package: `libverto-0.2.5-4.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libverto-0.2.5-4.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/23eb8faf40e93c9ecbfeccc868d2e42b65bde82f92e1af0b0e9e17c387f1b049/libverto-0.2.5-4.amzn2.0.2.src.rpm
```

### `rpm` package: `libxml2-2.9.1-6.amzn2.5.6.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libxml2-2.9.1-6.amzn2.5.6
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/79e607f1b320f6a1badfdc3879024bfe5f234146d84b771139da7a8a13f60e79/libxml2-2.9.1-6.amzn2.5.6.src.rpm
```

### `rpm` package: `lua-5.1.4-15.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url lua-5.1.4-15.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/4f245b1212afa57d45d2ef83997a92d3346a2aa315de8d54c4f93aceb71c2c97/lua-5.1.4-15.amzn2.0.2.src.rpm
```

### `rpm` package: `ncurses-6.0-8.20170212.amzn2.1.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-6.0-8.20170212.amzn2.1.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/cc80432d7622927e509bbb5b04fac26019cd3ff487c79177d8a127ccd611b0d4/ncurses-6.0-8.20170212.amzn2.1.4.src.rpm
```

### `rpm` package: `ncurses-base-6.0-8.20170212.amzn2.1.4.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-base-6.0-8.20170212.amzn2.1.4.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/cc80432d7622927e509bbb5b04fac26019cd3ff487c79177d8a127ccd611b0d4/ncurses-6.0-8.20170212.amzn2.1.4.src.rpm
```

### `rpm` package: `ncurses-libs-6.0-8.20170212.amzn2.1.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url ncurses-libs-6.0-8.20170212.amzn2.1.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/cc80432d7622927e509bbb5b04fac26019cd3ff487c79177d8a127ccd611b0d4/ncurses-6.0-8.20170212.amzn2.1.4.src.rpm
```

### `rpm` package: `nspr-4.34.0-3.1.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nspr-4.34.0-3.1.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/7315b151847db7419412600b7f5a60aaa0e2b17b89e30ee0388339576769ada5/nspr-4.34.0-3.1.amzn2.src.rpm
```

### `rpm` package: `nss-3.79.0-4.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nss-3.79.0-4.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/af6a836b5afa542fafe33730125c24f89360aa24ecb13cddf9e206307f620579/nss-3.79.0-4.amzn2.src.rpm
```

### `rpm` package: `nss-pem-1.0.3-5.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv1.1

Source:

```console
$ dnf --quiet download --source --url nss-pem-1.0.3-5.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/704279710518c94532cf67062b10877693d651e1b652fb60ed1ce1fa0cb49d7a/nss-pem-1.0.3-5.amzn2.src.rpm
```

### `rpm` package: `nss-softokn-3.79.0-4.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nss-softokn-3.79.0-4.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/4f921f4711a45f9ff934128a70b762fce56ed4b0324fac72735fb320f4761365/nss-softokn-3.79.0-4.amzn2.src.rpm
```

### `rpm` package: `nss-softokn-freebl-3.79.0-4.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nss-softokn-freebl-3.79.0-4.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/4f921f4711a45f9ff934128a70b762fce56ed4b0324fac72735fb320f4761365/nss-softokn-3.79.0-4.amzn2.src.rpm
```

### `rpm` package: `nss-sysinit-3.79.0-4.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nss-sysinit-3.79.0-4.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/af6a836b5afa542fafe33730125c24f89360aa24ecb13cddf9e206307f620579/nss-3.79.0-4.amzn2.src.rpm
```

### `rpm` package: `nss-tools-3.79.0-4.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nss-tools-3.79.0-4.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/af6a836b5afa542fafe33730125c24f89360aa24ecb13cddf9e206307f620579/nss-3.79.0-4.amzn2.src.rpm
```

### `rpm` package: `nss-util-3.79.0-1.amzn2.x86_64`

Licenses (from `rpm --query`): MPLv2.0

Source:

```console
$ dnf --quiet download --source --url nss-util-3.79.0-1.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/993c341e2f134b55e52fa3fb761b5ee3193aaf6e60b55993cd1b6ab67f1f890b/nss-util-3.79.0-1.amzn2.src.rpm
```

### `rpm` package: `openldap-2.4.44-23.amzn2.0.4.x86_64`

Licenses (from `rpm --query`): OpenLDAP

Source:

```console
$ dnf --quiet download --source --url openldap-2.4.44-23.amzn2.0.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/44bc9d6324ee2049d0fdfdd53bd0ec9eb57f05ec89187bfa7de74174ba6c7894/openldap-2.4.44-23.amzn2.0.4.src.rpm
```

### `rpm` package: `openssl-libs-1.0.2k-24.amzn2.0.4.x86_64`

Licenses (from `rpm --query`): OpenSSL

Source:

```console
$ dnf --quiet download --source --url openssl-libs-1.0.2k-24.amzn2.0.4
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/2ee60ef96c7e4cd2df49a13cb2e8f679f6efbe4f65a91253e859d98ddfd926e5/openssl-1.0.2k-24.amzn2.0.4.src.rpm
```

### `rpm` package: `p11-kit-0.23.22-1.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url p11-kit-0.23.22-1.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/79c2f1cc336aa17382372c2c5577054870d1d123e5ce606f33bc2443e9c91347/p11-kit-0.23.22-1.amzn2.0.1.src.rpm
```

### `rpm` package: `p11-kit-trust-0.23.22-1.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url p11-kit-trust-0.23.22-1.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/79c2f1cc336aa17382372c2c5577054870d1d123e5ce606f33bc2443e9c91347/p11-kit-0.23.22-1.amzn2.0.1.src.rpm
```

### `rpm` package: `pcre-8.32-17.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre-8.32-17.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/c2b7d97e78a0b2fc29614992206919068a4f34f088bba431056abcb8802ce872/pcre-8.32-17.amzn2.0.2.src.rpm
```

### `rpm` package: `pinentry-0.8.1-17.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url pinentry-0.8.1-17.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/30819f9f22382344ac3af9a69db748efdb80c7dd77ff73f80d77579fd6409209/pinentry-0.8.1-17.amzn2.0.2.src.rpm
```

### `rpm` package: `popt-1.13-16.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url popt-1.13-16.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/849bd178ea42fbff69e6c5e765042ab80fb56a96bcadc7218926b13765282945/popt-1.13-16.amzn2.0.2.src.rpm
```

### `rpm` package: `pth-2.0.7-23.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url pth-2.0.7-23.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/b168e67224ed78f4c9d2430cad3950ad4e8bb373f8c183347b44f80a4f35e069/pth-2.0.7-23.amzn2.0.2.src.rpm
```

### `rpm` package: `pygpgme-0.3-9.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url pygpgme-0.3-9.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/59142d6d866bcc463e322e6bc8ee0dd7155379ba96d2b6d142c28d1e63e2fa2d/pygpgme-0.3-9.amzn2.0.3.src.rpm
```

### `rpm` package: `pyliblzma-0.5.3-25.amzn2.x86_64`

Licenses (from `rpm --query`): LGPLv3+

Source:

```console
$ dnf --quiet download --source --url pyliblzma-0.5.3-25.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/860af43ebf61fc4b2c6c02ec914630e76e68197a77f6b7318b92f5059c7673d1/pyliblzma-0.5.3-25.amzn2.src.rpm
```

### `rpm` package: `python-2.7.18-1.amzn2.0.5.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python-2.7.18-1.amzn2.0.5
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/854107ec66748f52de4d28cd326c11f9c97f14dc4b578c7787b2c6b63eee272c/python-2.7.18-1.amzn2.0.5.src.rpm
```

### `rpm` package: `python-iniparse-0.4-9.amzn2.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url python-iniparse-0.4-9.amzn2.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/c44ed4bc8040ce8e74624bd74404387f1c5320ee6b6d975a81e358ab7919b11a/python-iniparse-0.4-9.amzn2.src.rpm
```

### `rpm` package: `python-libs-2.7.18-1.amzn2.0.5.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python-libs-2.7.18-1.amzn2.0.5
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/854107ec66748f52de4d28cd326c11f9c97f14dc4b578c7787b2c6b63eee272c/python-2.7.18-1.amzn2.0.5.src.rpm
```

### `rpm` package: `python-pycurl-7.19.0-19.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ or MIT

Source:

```console
$ dnf --quiet download --source --url python-pycurl-7.19.0-19.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/c498524c54f789da1b967318c6a41d5f28c5b95f66ba831e6de30e246039cf55/python-pycurl-7.19.0-19.amzn2.0.2.src.rpm
```

### `rpm` package: `python-urlgrabber-3.10-9.amzn2.0.1.noarch`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python-urlgrabber-3.10-9.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/059ccd33bf7223a26eedc0f289477c6c86fa24807e51a00dfbb3b8589ffd60be/python-urlgrabber-3.10-9.amzn2.0.1.src.rpm
```

### `rpm` package: `python2-rpm-4.11.3-48.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python2-rpm-4.11.3-48.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/ffe9349a4ab0677fed87175f54e301ad1673aa17c92919ff131b6c863c8e2e17/rpm-4.11.3-48.amzn2.0.2.src.rpm
```

### `rpm` package: `pyxattr-0.5.1-5.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url pyxattr-0.5.1-5.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/42d7abe323c155cadf4d22f9c13669b38caddd38a8c6bc8841985e1eec52cb43/pyxattr-0.5.1-5.amzn2.0.2.src.rpm
```

### `rpm` package: `readline-6.2-10.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url readline-6.2-10.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/e2b36f4a9d20e84ecb267c1a1b7ac1695a02175ffc08876957103338c6c358a7/readline-6.2-10.amzn2.0.2.src.rpm
```

### `rpm` package: `rpm-4.11.3-48.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url rpm-4.11.3-48.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/ffe9349a4ab0677fed87175f54e301ad1673aa17c92919ff131b6c863c8e2e17/rpm-4.11.3-48.amzn2.0.2.src.rpm
```

### `rpm` package: `rpm-build-libs-4.11.3-48.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-build-libs-4.11.3-48.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/ffe9349a4ab0677fed87175f54e301ad1673aa17c92919ff131b6c863c8e2e17/rpm-4.11.3-48.amzn2.0.2.src.rpm
```

### `rpm` package: `rpm-libs-4.11.3-48.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-libs-4.11.3-48.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/ffe9349a4ab0677fed87175f54e301ad1673aa17c92919ff131b6c863c8e2e17/rpm-4.11.3-48.amzn2.0.2.src.rpm
```

### `rpm` package: `sed-4.2.2-5.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url sed-4.2.2-5.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/6536ece4c46bf2ed9823a7e298728310689e54d535226819a7d7fe4b9eeadafd/sed-4.2.2-5.amzn2.0.2.src.rpm
```

### `rpm` package: `setup-2.8.71-10.amzn2.0.1.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url setup-2.8.71-10.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/a048edcb5e7a6552e092a3fd74a073fdd49e7269dd6f7b982088dc71a32cf631/setup-2.8.71-10.amzn2.0.1.src.rpm
```

### `rpm` package: `shadow-utils-4.1.5.1-24.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url shadow-utils-4.1.5.1-24.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/67028c7c7a187acb001e6d1e6de4c5bd5b910956af664e96d50da7e4a07fed74/shadow-utils-4.1.5.1-24.amzn2.0.2.src.rpm
```

### `rpm` package: `shared-mime-info-1.8-4.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url shared-mime-info-1.8-4.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/9e51e9ed398518c869e22c71a6cf809d331622958224ced40e8ebf31bf5e810f/shared-mime-info-1.8-4.amzn2.src.rpm
```

### `rpm` package: `sqlite-3.7.17-8.amzn2.1.1.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-3.7.17-8.amzn2.1.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/42efeeae9dcefd0c1a1b0eaafff80300a15588e03c1b5c3e727c2f8912fa8629/sqlite-3.7.17-8.amzn2.1.1.src.rpm
```

### `rpm` package: `system-release-2-14.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url system-release-2-14.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/f8291de4fb74f8128b183c912b52af7d376f9c08892cd663841193ebcc9e4496/system-release-2-14.amzn2.src.rpm
```

### `rpm` package: `tar-1.26-35.amzn2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url tar-1.26-35.amzn2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/3249d58314be6399ecbfcf70476bb2a0039af066ed4fc79942090302f6b214f6/tar-1.26-35.amzn2.src.rpm
```

### `rpm` package: `tzdata-2022f-1.amzn2.0.1.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url tzdata-2022f-1.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/8efe7e76e2a650c345a20deda6f2039b4b47569bbf1604aa75938188918e169b/tzdata-2022f-1.amzn2.0.1.src.rpm
```

### `rpm` package: `ustr-1.0.4-16.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): MIT or LGPLv2+ or BSD

Source:

```console
$ dnf --quiet download --source --url ustr-1.0.4-16.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/7477de946dfcd9c18a323e3fbf55abf8fe1137be0adb7d0c114c610963e4210e/ustr-1.0.4-16.amzn2.0.3.src.rpm
```

### `rpm` package: `vim-data-9.0.828-1.amzn2.0.1.noarch`

Licenses (from `rpm --query`): Vim and MIT

Source:

```console
$ dnf --quiet download --source --url vim-data-9.0.828-1.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/1059c0b15ffba2d32385b057934115ed747453af0d529506aaea93423577d06b/vim-9.0.828-1.amzn2.0.1.src.rpm
```

### `rpm` package: `vim-minimal-9.0.828-1.amzn2.0.1.x86_64`

Licenses (from `rpm --query`): Vim and MIT

Source:

```console
$ dnf --quiet download --source --url vim-minimal-9.0.828-1.amzn2.0.1
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/1059c0b15ffba2d32385b057934115ed747453af0d529506aaea93423577d06b/vim-9.0.828-1.amzn2.0.1.src.rpm
```

### `rpm` package: `xz-5.2.2-1.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url xz-5.2.2-1.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/e2158e7ac9785d1ff7288d90ddb7ac041ba54804e86b9a604ea0717444a17a76/xz-5.2.2-1.amzn2.0.3.src.rpm
```

### `rpm` package: `xz-libs-5.2.2-1.amzn2.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url xz-libs-5.2.2-1.amzn2.0.3
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/e2158e7ac9785d1ff7288d90ddb7ac041ba54804e86b9a604ea0717444a17a76/xz-5.2.2-1.amzn2.0.3.src.rpm
```

### `rpm` package: `yum-3.4.3-158.amzn2.0.6.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-3.4.3-158.amzn2.0.6.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/62652a39cdf15afcd1a1e7235fa00c3c22f9a3c99e9af83d3856219bdcf3c70b/yum-3.4.3-158.amzn2.0.6.src.rpm
```

### `rpm` package: `yum-metadata-parser-1.1.4-10.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url yum-metadata-parser-1.1.4-10.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/b710ba0dd68993f774c5fe5325edfec71935fa2f0dba7cd548692b84f31b7988/yum-metadata-parser-1.1.4-10.amzn2.0.2.src.rpm
```

### `rpm` package: `yum-plugin-ovl-1.1.31-46.amzn2.0.1.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-plugin-ovl-1.1.31-46.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/74e03e38d661b26d57dc3fcbd58a66e736b5e8979ccf0493149d0add45dd0416/yum-utils-1.1.31-46.amzn2.0.1.src.rpm
```

### `rpm` package: `yum-plugin-priorities-1.1.31-46.amzn2.0.1.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-plugin-priorities-1.1.31-46.amzn2.0.1.noarch
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/74e03e38d661b26d57dc3fcbd58a66e736b5e8979ccf0493149d0add45dd0416/yum-utils-1.1.31-46.amzn2.0.1.src.rpm
```

### `rpm` package: `zlib-1.2.7-19.amzn2.0.2.x86_64`

Licenses (from `rpm --query`): zlib and Boost

Source:

```console
$ dnf --quiet download --source --url zlib-1.2.7-19.amzn2.0.2
https://cdn.amazonlinux.com/2/core/2.0/SRPMS/38f67de470338d1009b708c81c7b0b2e99720e95223d015f19c7983f9771cebd/../../../../../blobstore/c82fee0e17a19d1b365f1bc3ab3a70808d24391c57ef3ab6a2845b5ca1c0e6ed/zlib-1.2.7-19.amzn2.0.2.src.rpm
```
