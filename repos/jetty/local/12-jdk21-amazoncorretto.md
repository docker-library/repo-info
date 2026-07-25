# `jetty:12.1.11-jdk21-amazoncorretto`

## Docker Metadata

- Image ID: `sha256:fce6732d793c74370ebd50ee7187926b35260ae6697540a865d0e3ebadd060b7`
- Created: `2026-07-24T00:13:55.13040968Z`
- Virtual Size: ~ 629.83 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/docker-entrypoint.sh"]`
- Command: `["java","-jar","/usr/local/jetty/start.jar"]`
- Environment:
  - `PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto`
  - `JETTY_VERSION=12.1.11`
  - `JETTY_HOME=/usr/local/jetty`
  - `JETTY_BASE=/var/lib/jetty`
  - `TMPDIR=/tmp/jetty`
  - `JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz`
  - `JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3`

## `rpm` (`.rpm`-based packages)

### `rpm` package: `alsa-lib-1.2.7.2-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url alsa-lib-1.2.7.2-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3e36f73ca841fdd156e987166dca8e5bcd1ab3178835f02c291c97c12d70dcdc/alsa-lib-1.2.7.2-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `alternatives-1.15-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url alternatives-1.15-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4294b160d9f7169d1393a9e5b061b6c6eb5ab5c181ab7137998b8bcaff9102e3/chkconfig-1.15-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `amazon-linux-repo-cdn-2023.12.20260710-0.amzn2023.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url amazon-linux-repo-cdn-2023.12.20260710-0.amzn2023.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/946c73a13a24cb6217d42410e6b3b94091732875c9ab8700deb978b86e8b3dca/system-release-2023.12.20260710-0.amzn2023.src.rpm
```

### `rpm` package: `audit-libs-3.1.5-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url audit-libs-3.1.5-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/b700c4f1b5771cef92b1aec2a7e748c8507e1f974bf00e26273f53b05cd68e84/audit-3.1.5-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `basesystem-11-11.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url basesystem-11-11.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/25e3bc7c2b357da6a91f5c94215030cd00bc9fd28e3c76f9581ad7ca1ba2d61d/basesystem-11-11.amzn2023.0.2.src.rpm
```

### `rpm` package: `bash-5.2.15-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url bash-5.2.15-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/99c1698d2e23e936a8812c11369bd66362e6e324f4178074a67d8f6c6c991be1/bash-5.2.15-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `bzip2-libs-1.0.8-6.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url bzip2-libs-1.0.8-6.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/44142b622640d1ec7703982fd963e4886f23fb34f5e4f2ee7dfe9e03af4373a4/bzip2-1.0.8-6.amzn2023.0.2.src.rpm
```

### `rpm` package: `ca-certificates-2025.2.76-1.0.amzn2023.0.3.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url ca-certificates-2025.2.76-1.0.amzn2023.0.3.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/59b7e0666d4ede3d707a71dcd63c98b0cbe2ad7535cd3c107708cbab6f1691d4/ca-certificates-2025.2.76-1.0.amzn2023.0.3.src.rpm
```

### `rpm` package: `cairo-1.18.0-4.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-only OR MPL-1.1

Source:

```console
$ dnf --quiet download --source --url cairo-1.18.0-4.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/9057a65c012923502c34c44b7018c0904ab7798c5dbba631e3faf598df9ff38d/cairo-1.18.0-4.amzn2023.0.3.src.rpm
```

### `rpm` package: `chkconfig-1.15-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url chkconfig-1.15-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4294b160d9f7169d1393a9e5b061b6c6eb5ab5c181ab7137998b8bcaff9102e3/chkconfig-1.15-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `coreutils-single-8.32-30.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url coreutils-single-8.32-30.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/a81b9940015f014abfd25ecc08c8400a663c32046d54a09660ed810a52cf2849/coreutils-8.32-30.amzn2023.0.5.src.rpm
```

### `rpm` package: `cracklib-2.9.6-27.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cracklib-2.9.6-27.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/a77129594ed69f63df9b878a119613fa9d82e790e287552621126548ddd63b9c/cracklib-2.9.6-27.amzn2023.0.2.src.rpm
```

### `rpm` package: `crypto-policies-20260224-1.gitea0f072.amzn2023.0.4.noarch`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url crypto-policies-20260224-1.gitea0f072.amzn2023.0.4.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8469222ce32ceceb0497502b5f19d9612ba1f50804715b4a0d3c8fdf4a8270c0/crypto-policies-20260224-1.gitea0f072.amzn2023.0.4.src.rpm
```

### `rpm` package: `cryptsetup-libs-2.6.1-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url cryptsetup-libs-2.6.1-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3d2ae32b79316dc73af4bf90f5872095fa2fabf031f0632c0d86bda782e99f1a/cryptsetup-2.6.1-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `curl-minimal-8.17.0-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): curl

Source:

```console
$ dnf --quiet download --source --url curl-minimal-8.17.0-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/66dca3511f4d0f38afcbb9c9a783f1f0c7486462ae3ffdb1226818198bf8cdd7/curl-8.17.0-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `cyrus-sasl-lib-2.1.27-18.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): BSD with advertising

Source:

```console
$ dnf --quiet download --source --url cyrus-sasl-lib-2.1.27-18.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3a81bad4163584397704c089ce92b4e014e4659eeb087d6612101143cd78f275/cyrus-sasl-2.1.27-18.amzn2023.0.3.src.rpm
```

### `rpm` package: `dbus-1.12.28-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-1.12.28-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4f374b6ed0b9905db1abe2799465a47703d42b85a3258ee982c85854a66b8821/dbus-1.12.28-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `dbus-broker-32-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): ASL 2.0

Source:

```console
$ dnf --quiet download --source --url dbus-broker-32-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/85611febb0ef65588be715e764a305404f3e9e7574300fe81dee9d5ced43ae53/dbus-broker-32-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `dbus-common-1.12.28-1.amzn2023.0.1.noarch`

Licenses (from `rpm --query`): (GPLv2+ or AFL) and GPLv2+

Source:

```console
$ dnf --quiet download --source --url dbus-common-1.12.28-1.amzn2023.0.1.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4f374b6ed0b9905db1abe2799465a47703d42b85a3258ee982c85854a66b8821/dbus-1.12.28-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `dejavu-sans-fonts-2.37-16.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-sans-fonts-2.37-16.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/b0c2c83c5393671c135f45902e4d5df5d7535faa1d32382706562fc17ddf320f/dejavu-fonts-2.37-16.amzn2023.0.2.src.rpm
```

### `rpm` package: `dejavu-sans-mono-fonts-2.37-16.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-sans-mono-fonts-2.37-16.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/b0c2c83c5393671c135f45902e4d5df5d7535faa1d32382706562fc17ddf320f/dejavu-fonts-2.37-16.amzn2023.0.2.src.rpm
```

### `rpm` package: `dejavu-serif-fonts-2.37-16.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): Bitstream Vera and Public Domain

Source:

```console
$ dnf --quiet download --source --url dejavu-serif-fonts-2.37-16.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/b0c2c83c5393671c135f45902e4d5df5d7535faa1d32382706562fc17ddf320f/dejavu-fonts-2.37-16.amzn2023.0.2.src.rpm
```

### `rpm` package: `device-mapper-1.02.185-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): GPLv2

Source:

```console
$ dnf --quiet download --source --url device-mapper-1.02.185-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6c27236d3ed494807a4907950dbcff2a2f854bf38237d931938a9651118067a5/lvm2-2.03.16-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `device-mapper-libs-1.02.185-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): LGPLv2

Source:

```console
$ dnf --quiet download --source --url device-mapper-libs-1.02.185-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6c27236d3ed494807a4907950dbcff2a2f854bf38237d931938a9651118067a5/lvm2-2.03.16-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `diffutils-3.8-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url diffutils-3.8-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/eff0478b4463635a7c572bf36181bd38598e6d81fcece357015dcfa01e46af3f/diffutils-3.8-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `dnf-4.14.0-1.amzn2023.0.7.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-4.14.0-1.amzn2023.0.7.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5bf69cc9173eb7566be99a1a9f72eed8b79eec7537f230236a79bce63a97e93a/dnf-4.14.0-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `dnf-data-4.14.0-1.amzn2023.0.7.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url dnf-data-4.14.0-1.amzn2023.0.7.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5bf69cc9173eb7566be99a1a9f72eed8b79eec7537f230236a79bce63a97e93a/dnf-4.14.0-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `duktape-2.7.0-21.amzn2023.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url duktape-2.7.0-21.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/0136a833fbaf722da4bf23a34c3b72c17cc28a3af1936f37c25a2fd403441e45/duktape-2.7.0-21.amzn2023.src.rpm
```

### `rpm` package: `elfutils-default-yama-scope-0.188-3.amzn2023.0.3.noarch`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-default-yama-scope-0.188-3.amzn2023.0.3.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/606b2109a747cc8a57cf861662775f5869d09829c65dd56d752c6014efe31900/elfutils-0.188-3.amzn2023.0.3.src.rpm
```

### `rpm` package: `elfutils-libelf-0.188-3.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-libelf-0.188-3.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/606b2109a747cc8a57cf861662775f5869d09829c65dd56d752c6014efe31900/elfutils-0.188-3.amzn2023.0.3.src.rpm
```

### `rpm` package: `elfutils-libs-0.188-3.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): GPLv2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url elfutils-libs-0.188-3.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/606b2109a747cc8a57cf861662775f5869d09829c65dd56d752c6014efe31900/elfutils-0.188-3.amzn2023.0.3.src.rpm
```

### `rpm` package: `expat-2.6.3-1.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url expat-2.6.3-1.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/093e302fe4238ed44134bb3fc2adb5ae4c6832529b389774c7f7347c38bd35d4/expat-2.6.3-1.amzn2023.0.6.src.rpm
```

### `rpm` package: `file-libs-5.39-7.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url file-libs-5.39-7.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8428ddd0fc87b93b688c26607c20be3485ca344c65d9b63d4b39bb1ba34d7d6f/file-5.39-7.amzn2023.0.4.src.rpm
```

### `rpm` package: `filesystem-3.14-5.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url filesystem-3.14-5.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5df3821dcd7b584e67c5e02c6b5c9cff32bee0118e263d7602148432375e398c/filesystem-3.14-5.amzn2023.0.3.src.rpm
```

### `rpm` package: `fontconfig-2.13.94-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT and Public Domain and UCD

Source:

```console
$ dnf --quiet download --source --url fontconfig-2.13.94-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/7d1d03c11bd3b705263af6974dcbefd23b8d9668e6d4d1082c42487a73043dff/fontconfig-2.13.94-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `fonts-filesystem-2.0.5-12.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url fonts-filesystem-2.0.5-12.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/57d60d7f9287825194a2876a6566fd6f5adc5f7bd51e94b3b4fc4fb683f179e4/fonts-rpm-macros-2.0.5-12.amzn2023.0.2.src.rpm
```

### `rpm` package: `freetype-2.13.2-5.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): (FTL OR GPL-2.0-or-later) AND BSD-3-Clause AND MIT AND MIT-Modern-Variant AND LicenseRef-Fedora-Public-Domain AND Zlib

Source:

```console
$ dnf --quiet download --source --url freetype-2.13.2-5.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3692e6412e4a9eee8ee5ba5d813cfa773355fc51d148e18d11547f4325bc32c6/freetype-2.13.2-5.amzn2023.0.2.src.rpm
```

### `rpm` package: `gawk-5.1.0-3.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GPLv2+ and LGPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url gawk-5.1.0-3.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/212e39b4609e36d3f8d02316ad4f9909a28d90e1e9c412174347ad0a78905d84/gawk-5.1.0-3.amzn2023.0.3.src.rpm
```

### `rpm` package: `gdbm-libs-1.19-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gdbm-libs-1.19-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/7289cdd6f7a54c962de48a332d2b471deb0ec6e3aa1fa98c21c9f9ba12870417/gdbm-1.19-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `giflib-5.2.1-9.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url giflib-5.2.1-9.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/51fc4a5cdf03d43b8e603445b1ae86eaf95c3849e588a2a7b51caa14fdc13595/giflib-5.2.1-9.amzn2023.0.4.src.rpm
```

### `rpm` package: `glib2-2.82.2-769.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later

Source:

```console
$ dnf --quiet download --source --url glib2-2.82.2-769.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/367c510674c4841d89ffe6709e606a33d4f8c9b19b3f4922b6d0a8a0a6388b2c/glib2-2.82.2-769.amzn2023.src.rpm
```

### `rpm` package: `glibc-2.34-231.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+ and GPLv2+ with exceptions and BSD and Inner-Net and ISC and Public Domain and GFDL

Source:

```console
$ dnf --quiet download --source --url glibc-2.34-231.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5c14047c719844c616626f2c139ae5b4fb19023762407565e824186e5812f9cf/glibc-2.34-231.amzn2023.0.4.src.rpm
```

### `rpm` package: `glibc-common-2.34-231.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+ and GPLv2+ with exceptions and BSD and Inner-Net and ISC and Public Domain and GFDL

Source:

```console
$ dnf --quiet download --source --url glibc-common-2.34-231.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5c14047c719844c616626f2c139ae5b4fb19023762407565e824186e5812f9cf/glibc-2.34-231.amzn2023.0.4.src.rpm
```

### `rpm` package: `glibc-minimal-langpack-2.34-231.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and LGPLv2+ with exceptions and GPLv2+ and GPLv2+ with exceptions and BSD and Inner-Net and ISC and Public Domain and GFDL

Source:

```console
$ dnf --quiet download --source --url glibc-minimal-langpack-2.34-231.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5c14047c719844c616626f2c139ae5b4fb19023762407565e824186e5812f9cf/glibc-2.34-231.amzn2023.0.4.src.rpm
```

### `rpm` package: `gmp-6.2.1-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url gmp-6.2.1-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ce41b2079bcd3a2bf9e4cb590b8731a8113ba0929aece4dabbd48d7382dc8699/gmp-6.2.1-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `gnupg2-2.3.7-1.amzn2023.0.9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gnupg2-2.3.7-1.amzn2023.0.9
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3a1923326a31c14b023cb5409a7461cd7c2cf545fe7dc809f4dcf23b71bdd537/gnupg2-2.3.7-1.amzn2023.0.9.src.rpm
```

### `rpm` package: `gnupg2-smime-2.3.7-1.amzn2023.0.9.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url gnupg2-smime-2.3.7-1.amzn2023.0.9
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3a1923326a31c14b023cb5409a7461cd7c2cf545fe7dc809f4dcf23b71bdd537/gnupg2-2.3.7-1.amzn2023.0.9.src.rpm
```

### `rpm` package: `gnutls-3.8.10-4.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url gnutls-3.8.10-4.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/bff2eb5edad1ca3848eb8b2b556eb1767c44d06b5943d041eaa7444a1e8671dd/gnutls-3.8.10-4.amzn2023.0.2.src.rpm
```

### `rpm` package: `google-noto-fonts-common-20240401-1.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): OFL-1.1

Source:

```console
$ dnf --quiet download --source --url google-noto-fonts-common-20240401-1.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ea7a8fad55e9da576cb7bd8a78c1a0fc223c471d89f08727537e5d23811e5038/google-noto-fonts-20240401-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `google-noto-sans-vf-fonts-20240401-1.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): OFL-1.1

Source:

```console
$ dnf --quiet download --source --url google-noto-sans-vf-fonts-20240401-1.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ea7a8fad55e9da576cb7bd8a78c1a0fc223c471d89f08727537e5d23811e5038/google-noto-fonts-20240401-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `gpg-pubkey-d832c631-6515c85e`

Licenses (from `rpm --query`): pubkey

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `gpgme-1.23.2-182.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND MIT

Source:

```console
$ dnf --quiet download --source --url gpgme-1.23.2-182.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/89737284680e7d5cd52267bb7e21285ad753a5233ab0bd132644ce93141545ae/gpgme-1.23.2-182.amzn2023.0.1.src.rpm
```

### `rpm` package: `graphite2-1.3.14-7.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): (LGPLv2+ or GPLv2+ or MPLv1.1) and (Netscape or GPLv2+ or LGPLv2+)

Source:

```console
$ dnf --quiet download --source --url graphite2-1.3.14-7.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/b393cc925a66bd1494a4523bbce2b3531566d4b36abf2f97e97a1033cba3bc28/graphite2-1.3.14-7.amzn2023.0.3.src.rpm
```

### `rpm` package: `grep-3.8-1.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url grep-3.8-1.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2ffdc0cda5bb0d20b5a87a2868d8bea572fbe257030be915a49d2e439d8cd459/grep-3.8-1.amzn2023.0.4.src.rpm
```

### `rpm` package: `gzip-1.12-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): GPLv3+ and GFDL

Source:

```console
$ dnf --quiet download --source --url gzip-1.12-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/1efab64447a2051db3c054ca4d367135a6f6861ba7d2f16353ceba0bfcbfd94e/gzip-1.12-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `harfbuzz-7.0.0-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url harfbuzz-7.0.0-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3cc7971ddcf04cd18ac90b4a978eb7acf4249d5a04124a457b0913212fa1e684/harfbuzz-7.0.0-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `java-21-amazon-corretto-21.0.12+8-1.amzn2023.1.x86_64`

Licenses (from `rpm --query`): ASL 1.1 and ASL 2.0 and BSD and BSD with advertising and GPL+ and GPLv2 and GPLv2 with exceptions and IJG and LGPLv2+ and MIT and MPLv2.0 and Public Domain and W3C and zlib and ISC and FTL and RSA.

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `java-21-amazon-corretto-devel-21.0.12+8-1.amzn2023.1.x86_64`

Licenses (from `rpm --query`): ASL 1.1 and ASL 2.0 and BSD and BSD with advertising and GPL+ and GPLv2 and GPLv2 with exceptions and IJG and LGPLv2+ and MIT and MPLv2.0 and Public Domain and W3C and zlib and ISC and FTL and RSA.

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `java-21-amazon-corretto-headless-21.0.12+8-1.amzn2023.1.x86_64`

Licenses (from `rpm --query`): ASL 1.1 and ASL 2.0 and BSD and BSD with advertising and GPL+ and GPLv2 and GPLv2 with exceptions and IJG and LGPLv2+ and MIT and MPLv2.0 and Public Domain and W3C and zlib and ISC and FTL and RSA.

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `java-21-amazon-corretto-jmods-21.0.12+8-1.amzn2023.1.x86_64`

Licenses (from `rpm --query`): ASL 1.1 and ASL 2.0 and BSD and BSD with advertising and GPL+ and GPLv2 and GPLv2 with exceptions and IJG and LGPLv2+ and MIT and MPLv2.0 and Public Domain and W3C and zlib and ISC and FTL and RSA.

**WARNING:** unable to find source (`dnf download` failed or returned no results)!

### `rpm` package: `javapackages-filesystem-6.0.0-7.amzn2023.0.6.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url javapackages-filesystem-6.0.0-7.amzn2023.0.6.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/823d556d9261802eec3c78bfa1b6a48f0aa082813ff037e9cb8c5ca5a8ec21c2/javapackages-tools-6.0.0-7.amzn2023.0.6.src.rpm
```

### `rpm` package: `json-c-0.14-8.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url json-c-0.14-8.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/11f48e71e93d6c9343029363a134098ac3e72abb12ef4a7e97a312834b3ef5b9/json-c-0.14-8.amzn2023.0.2.src.rpm
```

### `rpm` package: `keyutils-libs-1.6.3-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url keyutils-libs-1.6.3-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6bcba5180ab34db938e05fc25795fd4e88b7ad2e466849848229f5984ae4f400/keyutils-1.6.3-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `kmod-libs-29-2.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url kmod-libs-29-2.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/792fd8ecc00a78763b62183cc588a5edbd928fadc61a814506f07a474faf0033/kmod-29-2.amzn2023.0.5.src.rpm
```

### `rpm` package: `krb5-libs-1.21.3-7.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url krb5-libs-1.21.3-7.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6d3d0590f352bb8c5f1106dccc86c8e97f87b9575900d027a4630cf926a89b47/krb5-1.21.3-7.amzn2023.0.1.src.rpm
```

### `rpm` package: `langpacks-core-font-en-3.0-21.amzn2023.0.4.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url langpacks-core-font-en-3.0-21.amzn2023.0.4.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/cf2d1ff906ce456120e2791e4a176b956260aa96a907ac65c37dd3eb357918d7/langpacks-3.0-21.amzn2023.0.4.src.rpm
```

### `rpm` package: `libICE-1.1.1-3.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT-open-group

Source:

```console
$ dnf --quiet download --source --url libICE-1.1.1-3.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/08cc6773f3a335071ca3ae3af5caf0a9bdef796fb9ef5c7f7674fe1e84c62e52/libICE-1.1.1-3.amzn2023.0.1.src.rpm
```

### `rpm` package: `libSM-1.2.4-3.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT AND MIT-open-group

Source:

```console
$ dnf --quiet download --source --url libSM-1.2.4-3.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/7c15cae6aa86f228b6646b0e69be57a5922205f4d487883210b10ec3b4701902/libSM-1.2.4-3.amzn2023.0.1.src.rpm
```

### `rpm` package: `libX11-1.8.10-2.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT AND X11

Source:

```console
$ dnf --quiet download --source --url libX11-1.8.10-2.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8a36bfba559d28e443efbb53894cef9aaa0fcbf1bc92dd93c4ea0d49199a8782/libX11-1.8.10-2.amzn2023.0.1.src.rpm
```

### `rpm` package: `libX11-common-1.8.10-2.amzn2023.0.1.noarch`

Licenses (from `rpm --query`): MIT AND X11

Source:

```console
$ dnf --quiet download --source --url libX11-common-1.8.10-2.amzn2023.0.1.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8a36bfba559d28e443efbb53894cef9aaa0fcbf1bc92dd93c4ea0d49199a8782/libX11-1.8.10-2.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXau-1.0.11-6.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT-open-group

Source:

```console
$ dnf --quiet download --source --url libXau-1.0.11-6.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07ca9379847f51fe105f29eed7ba5914f4baa9b7f5259c859192481f95279219/libXau-1.0.11-6.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXext-1.3.6-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT-open-group AND X11 AND HPND AND HPND-sell-variant AND SMLNJ AND MIT AND ISC AND HPND-doc AND HPND-doc-sell

Source:

```console
$ dnf --quiet download --source --url libXext-1.3.6-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/424ac3156076a29511bd570a5e0dce6ddcda7f26a8dcfc79621cbc8a04ea9f67/libXext-1.3.6-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXi-1.8.2-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT-open-group AND SMLNJ AND MIT

Source:

```console
$ dnf --quiet download --source --url libXi-1.8.2-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/77e8dc1d314b1db3e4b90b7bb49d746dad709d3f311e5441ab383851b11d8421/libXi-1.8.2-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXinerama-1.1.5-6.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT AND MIT-open-group AND X11

Source:

```console
$ dnf --quiet download --source --url libXinerama-1.1.5-6.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3183dd8e7b52493a9e3631859270f08362bb57d98d8867eaccd81705cede4c3b/libXinerama-1.1.5-6.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXrandr-1.5.4-3.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): HPND-sell-variant

Source:

```console
$ dnf --quiet download --source --url libXrandr-1.5.4-3.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/118a9cb468fc2ae81e9c50a3c0156c550e8ffdcce9cfc09aa3ac43365c39d7a6/libXrandr-1.5.4-3.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXrender-0.9.11-6.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): HPND-sell-variant

Source:

```console
$ dnf --quiet download --source --url libXrender-0.9.11-6.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/bfcb931770164915e3a3a406cd7f17ca1b7e6df4955fa6d160026dc138da78a7/libXrender-0.9.11-6.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXt-1.3.0-3.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT AND HPND-sell-variant AND SMLNJ AND MIT-open-group AND X11

Source:

```console
$ dnf --quiet download --source --url libXt-1.3.0-3.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/e453a05d651ae4a3efc068063eb42e2702e51cc6eb1ea43409ff5270b0a2a0ea/libXt-1.3.0-3.amzn2023.0.1.src.rpm
```

### `rpm` package: `libXtst-1.2.5-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT-open-group AND HPND-sell-variant AND X11 AND HPND-doc AND HPND-doc-sell

Source:

```console
$ dnf --quiet download --source --url libXtst-1.2.5-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/324cf727d1eba9f6e6b5637aaa2832edbc14274f3b1680a3cfdbbd76932c9ca1/libXtst-1.2.5-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libacl-2.3.1-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libacl-2.3.1-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/abffc134a517b95c6933dafd2d93596ab7eaf8b5a0a73f3954b9011526471911/acl-2.3.1-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `libarchive-3.7.4-2.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): BSD-2-Clause AND FSFULLR AND GPL-2.0-or-later WITH Libtool-exception AND BSD-3-Clause AND FSFUL

Source:

```console
$ dnf --quiet download --source --url libarchive-3.7.4-2.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/adf24d5c47edf1096e054c39d37d6aa521f80629c8aac10392dc29061d7443b8/libarchive-3.7.4-2.amzn2023.0.4.src.rpm
```

### `rpm` package: `libargon2-20171227-9.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): Public Domain or ASL 2.0

Source:

```console
$ dnf --quiet download --source --url libargon2-20171227-9.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/f67f93ccde013ce74acf52f52863c02be8bf90587289d43316a5a2d8c395e8b5/argon2-20171227-9.amzn2023.0.2.src.rpm
```

### `rpm` package: `libassuan-2.5.5-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libassuan-2.5.5-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/e76d29fe0fa8402c9d9ce3130a5c17c21184e64f48e422c291e0a2c796dbe048/libassuan-2.5.5-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `libattr-2.5.1-3.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libattr-2.5.1-3.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5f96d4cbc2a467f87c4371434e516671b2ea05a3d9a52f2afa6c8c6536af087a/attr-2.5.1-3.amzn2023.0.2.src.rpm
```

### `rpm` package: `libblkid-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libblkid-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `libbrotli-1.0.9-4.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libbrotli-1.0.9-4.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ae015da01f456a97b4738233cea3c8abcc9bfbcddd0890d3a60792d52d3a1497/brotli-1.0.9-4.amzn2023.0.2.src.rpm
```

### `rpm` package: `libcap-2.73-1.amzn2023.0.7.x86_64`

Licenses (from `rpm --query`): BSD-3-Clause OR GPL-2.0-only

Source:

```console
$ dnf --quiet download --source --url libcap-2.73-1.amzn2023.0.7
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/0a594ec1423a9ea68ceefc1fc4b2eb9c199dd616b67f7663bc9174d87703a7db/libcap-2.73-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `libcap-ng-0.8.2-4.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libcap-ng-0.8.2-4.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5c78d25798270772d690e2d3e8de8388d988dcbe2bf183172e490fa47b78ec79/libcap-ng-0.8.2-4.amzn2023.0.2.src.rpm
```

### `rpm` package: `libcom_err-1.46.5-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libcom_err-1.46.5-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/1bd46590cfe3a4600a72bb0cc0677d5f22e2c25cf765b722f26b5f3239ef8813/e2fsprogs-1.46.5-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `libcomps-0.1.20-1.amzn2023.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url libcomps-0.1.20-1.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2c60a977f6060dee6b1b1801f9ba36cb52d0726e5be1d1f8759d72fee63971af/libcomps-0.1.20-1.amzn2023.src.rpm
```

### `rpm` package: `libcurl-minimal-8.17.0-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): curl

Source:

```console
$ dnf --quiet download --source --url libcurl-minimal-8.17.0-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/66dca3511f4d0f38afcbb9c9a783f1f0c7486462ae3ffdb1226818198bf8cdd7/curl-8.17.0-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `libdb-5.3.28-49.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): BSD and LGPLv2 and Sleepycat

Source:

```console
$ dnf --quiet download --source --url libdb-5.3.28-49.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/17f533e331dbe3d1f6d7c16e721cf2b260c3c59bc4a01e6106e2df2f8304a37c/libdb-5.3.28-49.amzn2023.0.2.src.rpm
```

### `rpm` package: `libdnf-0.69.0-8.amzn2023.0.8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libdnf-0.69.0-8.amzn2023.0.8
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/548ff72725aa7fc6ef07672f1f6a751b8eaa16ff069e2c3d4f12daa168185507/libdnf-0.69.0-8.amzn2023.0.8.src.rpm
```

### `rpm` package: `libeconf-0.7.9-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libeconf-0.7.9-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/36632022a66a85621dc10dc1f321bcd1681266b03e37199ef8b298ac2c9261c5/libeconf-0.7.9-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libfdisk-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libfdisk-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `libffi-3.4.4-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libffi-3.4.4-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/dd62668d8185eb8077c6b6305913b450519b2d366a2b19e2f60fe085a84e91f0/libffi-3.4.4-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libgcc-14.2.1-7.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND (GPL-3.0-or-later WITH GCC-exception-3.1) AND (GPL-3.0-or-later WITH Texinfo-exception) AND (LGPL-2.1-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GNU-compiler-exception) AND BSL-1.0 AND GFDL-1.3-or-later AND Linux-man-pages-copyleft-2-para AND SunPro AND BSD-1-Clause AND BSD-2-Clause AND BSD-2-Clause-Views AND BSD-3-Clause AND BSD-4-Clause AND BSD-Source-Code AND Zlib AND MIT AND Apache-2.0 AND (Apache-2.0 WITH LLVM-Exception) AND ZPL-2.1 AND ISC AND LicenseRef-Fedora-Public-Domain AND HP-1986 AND curl AND Martin-Birgmeier AND HPND-Markus-Kuhn AND dtoa AND SMLNJ AND AMD-newlib AND OAR AND HPND-merchantability-variant AND HPND-Intel

Source:

```console
$ dnf --quiet download --source --url libgcc-14.2.1-7.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/83528949c374882eeb4038effae9644f59655cb8b26dd3aea99a5621d0a25cfe/gcc14-14.2.1-7.amzn2023.0.2.src.rpm
```

### `rpm` package: `libgcrypt-1.10.2-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgcrypt-1.10.2-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/9619a7bbc1876a8dafebac7520294fdfad7d75a3b6a44ded1d40b8f0d9cdb222/libgcrypt-1.10.2-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `libgomp-14.2.1-7.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND (GPL-3.0-or-later WITH GCC-exception-3.1) AND (GPL-3.0-or-later WITH Texinfo-exception) AND (LGPL-2.1-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GNU-compiler-exception) AND BSL-1.0 AND GFDL-1.3-or-later AND Linux-man-pages-copyleft-2-para AND SunPro AND BSD-1-Clause AND BSD-2-Clause AND BSD-2-Clause-Views AND BSD-3-Clause AND BSD-4-Clause AND BSD-Source-Code AND Zlib AND MIT AND Apache-2.0 AND (Apache-2.0 WITH LLVM-Exception) AND ZPL-2.1 AND ISC AND LicenseRef-Fedora-Public-Domain AND HP-1986 AND curl AND Martin-Birgmeier AND HPND-Markus-Kuhn AND dtoa AND SMLNJ AND AMD-newlib AND OAR AND HPND-merchantability-variant AND HPND-Intel

Source:

```console
$ dnf --quiet download --source --url libgomp-14.2.1-7.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/83528949c374882eeb4038effae9644f59655cb8b26dd3aea99a5621d0a25cfe/gcc14-14.2.1-7.amzn2023.0.2.src.rpm
```

### `rpm` package: `libgpg-error-1.42-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libgpg-error-1.42-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4851a17077c481764d8a2a776da1e07bc39b5766f101d23c27b8bd6ee8fd7f4d/libgpg-error-1.42-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `libidn2-2.3.2-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): (GPLv2+ or LGPLv3+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libidn2-2.3.2-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/609a72da4b90a6f582440a3905f728f4bba20fb8599a622613def09255370165/libidn2-2.3.2-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `libjpeg-turbo-2.1.4-2.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): IJG

Source:

```console
$ dnf --quiet download --source --url libjpeg-turbo-2.1.4-2.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3b69c82120b8e0dc45c3391f8e9eacb5d3711e9c7f7c448f258fa0fbde4417ad/libjpeg-turbo-2.1.4-2.amzn2023.0.5.src.rpm
```

### `rpm` package: `libksba-1.6.3-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): (LGPLv3+ or GPLv2+) and GPLv3+

Source:

```console
$ dnf --quiet download --source --url libksba-1.6.3-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/b42edddab247309fbe66a84620d8012f0597b989bb3d30003587bdb3f10aa605/libksba-1.6.3-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `libmodulemd-2.13.0-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libmodulemd-2.13.0-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/0981e43a27a8e154d4882fcfdc346e6be4429f95f23505b56e6f161ce32b7794/libmodulemd-2.13.0-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `libmount-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libmount-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `libnghttp2-1.59.0-3.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libnghttp2-1.59.0-3.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/119c5cffe140dbad84783033206605557a4395fede283e80eb29b25857e1e6f7/nghttp2-1.59.0-3.amzn2023.0.2.src.rpm
```

### `rpm` package: `libpng-1.6.37-10.amzn2023.0.13.x86_64`

Licenses (from `rpm --query`): zlib

Source:

```console
$ dnf --quiet download --source --url libpng-1.6.37-10.amzn2023.0.13
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ddc26e61ddfdecb177d549b5a87d2e8c46c4bc7798ce1987d7c407021234ed24/libpng-1.6.37-10.amzn2023.0.13.src.rpm
```

### `rpm` package: `libpsl-0.21.5-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libpsl-0.21.5-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2905a509d7222d81d14d72a7b10618852be3acf16af6579636f8c277da84c764/libpsl-0.21.5-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libpwquality-1.4.4-6.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): BSD or GPLv2+

Source:

```console
$ dnf --quiet download --source --url libpwquality-1.4.4-6.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/86e30c3a87534d5f20124dadd5bdb0638b6f9224422b0fbb93d364cc4c88ccf8/libpwquality-1.4.4-6.amzn2023.0.2.src.rpm
```

### `rpm` package: `librepo-1.14.5-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url librepo-1.14.5-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/db5476b65a57c09c6a2c2d5cf2fc72ffda1cce215d59fdd83b5ebc67fdf395eb/librepo-1.14.5-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `libreport-filesystem-2.15.2-2.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libreport-filesystem-2.15.2-2.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/9321ff29e6caeb5d54f7a85179d286bb0ca55008991b0ddd1b0dbb3e36e607c4/libreport-2.15.2-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `libseccomp-2.5.3-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2

Source:

```console
$ dnf --quiet download --source --url libseccomp-2.5.3-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/16b1aa5682a783e43f790a7d3226e42be23213297cdc4a350abf60552ccac50f/libseccomp-2.5.3-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `libsecret-0.21.4-3.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND Apache-2.0 AND (GPL-2.0-or-later OR TGPPL-1.0) AND LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url libsecret-0.21.4-3.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8550739d14445e853477a7cb986ec513a04d4c294b304c8c008969fd9275a1db/libsecret-0.21.4-3.amzn2023.0.1.src.rpm
```

### `rpm` package: `libselinux-3.4-5.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url libselinux-3.4-5.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/3edd36f0d73ba1e9b08cf3ab73865b3b555111944103cd8e99edf4b71048d804/libselinux-3.4-5.amzn2023.0.2.src.rpm
```

### `rpm` package: `libsemanage-3.4-5.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsemanage-3.4-5.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/c4eee28b50613554b12d93b8fb271dcf28f2191201e7fccca96cee63f6b5b64e/libsemanage-3.4-5.amzn2023.0.2.src.rpm
```

### `rpm` package: `libsepol-3.4-3.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsepol-3.4-3.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/9fb43af9fbea04646a759147d038e029a0568cab2191d5ae7ba2363ccd10dd9f/libsepol-3.4-3.amzn2023.0.3.src.rpm
```

### `rpm` package: `libsigsegv-2.13-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url libsigsegv-2.13-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/18a5131e075b467fda622c30e0f96787c39d18ed130a0d52aeed7eff388cd7d1/libsigsegv-2.13-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `libsmartcols-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libsmartcols-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `libsolv-0.7.22-1.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libsolv-0.7.22-1.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/56771dfd62a6f51562cdae00ac5cbd87f81182d0f3a5303590e8638e4c3b401d/libsolv-0.7.22-1.amzn2023.0.4.src.rpm
```

### `rpm` package: `libstdc++-14.2.1-7.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPL-3.0-or-later AND LGPL-3.0-or-later AND (GPL-3.0-or-later WITH GCC-exception-3.1) AND (GPL-3.0-or-later WITH Texinfo-exception) AND (LGPL-2.1-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GCC-exception-2.0) AND (GPL-2.0-or-later WITH GNU-compiler-exception) AND BSL-1.0 AND GFDL-1.3-or-later AND Linux-man-pages-copyleft-2-para AND SunPro AND BSD-1-Clause AND BSD-2-Clause AND BSD-2-Clause-Views AND BSD-3-Clause AND BSD-4-Clause AND BSD-Source-Code AND Zlib AND MIT AND Apache-2.0 AND (Apache-2.0 WITH LLVM-Exception) AND ZPL-2.1 AND ISC AND LicenseRef-Fedora-Public-Domain AND HP-1986 AND curl AND Martin-Birgmeier AND HPND-Markus-Kuhn AND dtoa AND SMLNJ AND AMD-newlib AND OAR AND HPND-merchantability-variant AND HPND-Intel

Source:

```console
$ dnf --quiet download --source --url libstdc++-14.2.1-7.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/83528949c374882eeb4038effae9644f59655cb8b26dd3aea99a5621d0a25cfe/gcc14-14.2.1-7.amzn2023.0.2.src.rpm
```

### `rpm` package: `libtasn1-4.19.0-1.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): GPLv3+ and LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libtasn1-4.19.0-1.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/d1734cb56f1797b2c7d860083f2f9e89ecf9297efe0f20edcf140f6426b9644c/libtasn1-4.19.0-1.amzn2023.0.6.src.rpm
```

### `rpm` package: `libunistring-0.9.10-10.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLV2+ or LGPLv3+

Source:

```console
$ dnf --quiet download --source --url libunistring-0.9.10-10.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/df2b927b122a4a9c6dd18caa7688ab5e0b3b88b17b0671c3fe2baa1ca3b3da17/libunistring-0.9.10-10.amzn2023.0.2.src.rpm
```

### `rpm` package: `libusbx-1.0.24-2.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libusbx-1.0.24-2.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/04c15f60f31adef2ed1db454badc2d6b6d215e263aaaaf4110e48281edc38583/libusbx-1.0.24-2.amzn2023.0.3.src.rpm
```

### `rpm` package: `libutempter-1.2.1-4.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url libutempter-1.2.1-4.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/0a0a8888ff1f8993f58eb66bf7710ea0dbf9fb31480c2203c500c6a8d4c79578/libutempter-1.2.1-4.amzn2023.0.2.src.rpm
```

### `rpm` package: `libuuid-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url libuuid-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `libverto-0.3.2-1.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libverto-0.3.2-1.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/69471fc8822dfc2d2453f7bfc252ba7a7587600659daa1674065e8cb8dcb99a2/libverto-0.3.2-1.amzn2023.0.2.src.rpm
```

### `rpm` package: `libxcb-1.17.0-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): X11

Source:

```console
$ dnf --quiet download --source --url libxcb-1.17.0-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/d20f8b1c7f5a8c641b4d2816383b06dc417c70e789098f9c9e6a641d47c80415/libxcb-1.17.0-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `libxcrypt-4.4.33-7.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND BSD-3-Clause AND BSD-2-Clause AND BSD-2-Clause-FreeBSD AND 0BSD AND CC0-1.0 AND LicenseRef-Fedora-Public-Domain

Source:

```console
$ dnf --quiet download --source --url libxcrypt-4.4.33-7.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/15ec09ebcdac3bc32e7ede1ac2926be1722c05016a9b62d0be4e0cadcbfa1080/libxcrypt-4.4.33-7.amzn2023.src.rpm
```

### `rpm` package: `libxkbcommon-1.6.0-2.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT AND X11 AND MIT-CMU

Source:

```console
$ dnf --quiet download --source --url libxkbcommon-1.6.0-2.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/7365458983e90320b35330197e3cb7d667f3c6b8e55318b51589a3b6cbb4c44b/libxkbcommon-1.6.0-2.amzn2023.0.1.src.rpm
```

### `rpm` package: `libxml2-2.10.4-1.amzn2023.0.19.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libxml2-2.10.4-1.amzn2023.0.19
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ffb3be967cc2c41b20ca2072c942080ef361d5007f01097ff6a58a91b784bf05/libxml2-2.10.4-1.amzn2023.0.19.src.rpm
```

### `rpm` package: `libyaml-0.2.5-5.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url libyaml-0.2.5-5.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/c880c393ba32929284579c71f978582e5efe02c63acfbd5b87f189ec07faaa2f/libyaml-0.2.5-5.amzn2023.0.2.src.rpm
```

### `rpm` package: `libzstd-1.5.5-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2

Source:

```console
$ dnf --quiet download --source --url libzstd-1.5.5-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/7b8eaa8999f8329c4253055d5b5d54b78907363dc4d512fd3deda46cd385efe7/zstd-1.5.5-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `lua-libs-5.4.4-3.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url lua-libs-5.4.4-3.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4a157115ba2f4b568b7915073d1046770faf78b0ddde3b0f3d53abcbbf6d7088/lua-5.4.4-3.amzn2023.0.2.src.rpm
```

### `rpm` package: `lz4-libs-1.9.4-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): GPLv2+ and BSD

Source:

```console
$ dnf --quiet download --source --url lz4-libs-1.9.4-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/e284c8b5425e181c9920a1aff750aa0bb0aa91d9ff00d555ee022fc45b4097a4/lz4-1.9.4-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `mpfr-4.1.0-7.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv3+

Source:

```console
$ dnf --quiet download --source --url mpfr-4.1.0-7.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2d8b4b3873d2d0120cc80ac6ce18c0e3effea624391149a1e61e692cc55b245a/mpfr-4.1.0-7.amzn2023.0.2.src.rpm
```

### `rpm` package: `ncurses-base-6.6-1.amzn2023.0.1.noarch`

Licenses (from `rpm --query`): MIT-open-group

Source:

```console
$ dnf --quiet download --source --url ncurses-base-6.6-1.amzn2023.0.1.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/10e5278bbffc01e3390f0f8c829e1c85995d8176019faa761e1019cd89578dd5/ncurses-6.6-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `ncurses-libs-6.6-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): MIT-open-group

Source:

```console
$ dnf --quiet download --source --url ncurses-libs-6.6-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/10e5278bbffc01e3390f0f8c829e1c85995d8176019faa761e1019cd89578dd5/ncurses-6.6-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `nettle-3.10.1-1.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): LGPLv3+ or GPLv2+

Source:

```console
$ dnf --quiet download --source --url nettle-3.10.1-1.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/60b39a625eaea894a6541b77484c7ec3e8b2fb75eba405a2a52c7824616eabc8/nettle-3.10.1-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `npth-1.6-6.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url npth-1.6-6.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/61d865eda39cab60211e5d995683d912479e2a3abae07c4a1506b2c04c76ab47/npth-1.6-6.amzn2023.0.2.src.rpm
```

### `rpm` package: `openldap-2.4.57-6.amzn2023.0.7.x86_64`

Licenses (from `rpm --query`): OpenLDAP

Source:

```console
$ dnf --quiet download --source --url openldap-2.4.57-6.amzn2023.0.7
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/e075e3623812d086fdfef5e7230a7f6d9b97d1b1f2be16d7b322a05b41c4fa1e/openldap-2.4.57-6.amzn2023.0.7.src.rpm
```

### `rpm` package: `openssl-fips-provider-latest-3.5.5-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): ASL 2.0

Source:

```console
$ dnf --quiet download --source --url openssl-fips-provider-latest-3.5.5-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8280f2f3beeac4604e356a4e7b3566934ca7a92904bcbf202c64d0d03cf7939e/openssl-3.5.5-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `openssl-libs-3.5.5-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): ASL 2.0

Source:

```console
$ dnf --quiet download --source --url openssl-libs-3.5.5-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8280f2f3beeac4604e356a4e7b3566934ca7a92904bcbf202c64d0d03cf7939e/openssl-3.5.5-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `p11-kit-0.24.1-2.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url p11-kit-0.24.1-2.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ae1ed1744168e6e3e7b6b463a39546de2f3558c925e83f644fde038dc918f77c/p11-kit-0.24.1-2.amzn2023.0.3.src.rpm
```

### `rpm` package: `p11-kit-trust-0.24.1-2.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url p11-kit-trust-0.24.1-2.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ae1ed1744168e6e3e7b6b463a39546de2f3558c925e83f644fde038dc918f77c/p11-kit-0.24.1-2.amzn2023.0.3.src.rpm
```

### `rpm` package: `pam-1.5.1-8.amzn2023.0.8.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url pam-1.5.1-8.amzn2023.0.8
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/cded7db9a5d3f67dd0336d106488f3660c9d5ba747de5fe991ddc0ce2b78d76e/pam-1.5.1-8.amzn2023.0.8.src.rpm
```

### `rpm` package: `pcre2-10.40-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-10.40-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/45e1170740316469029027eb3ec16f1f89999bdce964ab9e217c4397e7484fa0/pcre2-10.40-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `pcre2-syntax-10.40-1.amzn2023.0.3.noarch`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcre2-syntax-10.40-1.amzn2023.0.3.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/45e1170740316469029027eb3ec16f1f89999bdce964ab9e217c4397e7484fa0/pcre2-10.40-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `pcsc-lite-1.9.1-1.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcsc-lite-1.9.1-1.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ce55fb652e92ce29086b797846d75eeaf6b8fc6e5d5545da211e0e830bcd6f7b/pcsc-lite-1.9.1-1.amzn2023.0.4.src.rpm
```

### `rpm` package: `pcsc-lite-ccid-1.4.34-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url pcsc-lite-ccid-1.4.34-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/9fb1d94bb59dd36b9952cd6dfc3d38316a972fdcb1680356cf3940053738e175/pcsc-lite-ccid-1.4.34-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `pcsc-lite-libs-1.9.1-1.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): BSD

Source:

```console
$ dnf --quiet download --source --url pcsc-lite-libs-1.9.1-1.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/ce55fb652e92ce29086b797846d75eeaf6b8fc6e5d5545da211e0e830bcd6f7b/pcsc-lite-1.9.1-1.amzn2023.0.4.src.rpm
```

### `rpm` package: `pinentry-1.3.1-2.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url pinentry-1.3.1-2.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/8b7b1c7c8a61408ec66379999fffb9bc6637ed90614ea91408d5ddbf3d539a87/pinentry-1.3.1-2.amzn2023.0.1.src.rpm
```

### `rpm` package: `pixman-0.43.4-1.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url pixman-0.43.4-1.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4fffe48da10b4c9b054eb46f6067aeb93181fd4c1dac9f3601ee9f08e095a625/pixman-0.43.4-1.amzn2023.0.4.src.rpm
```

### `rpm` package: `polkit-125-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url polkit-125-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/e3106c286420a6b3aabf5b8252f46be8e3db771a5ca41a95831bb5f584925512/polkit-125-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `polkit-libs-125-1.amzn2023.0.3.x86_64`

Licenses (from `rpm --query`): LGPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url polkit-libs-125-1.amzn2023.0.3
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/e3106c286420a6b3aabf5b8252f46be8e3db771a5ca41a95831bb5f584925512/polkit-125-1.amzn2023.0.3.src.rpm
```

### `rpm` package: `polkit-pkla-compat-0.1-19.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url polkit-pkla-compat-0.1-19.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/574b559291e990b091e2fe3bedc039fedbef05270c67ccd9e3b4dab1560e6734/polkit-pkla-compat-0.1-19.amzn2023.0.2.src.rpm
```

### `rpm` package: `popt-1.18-6.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url popt-1.18-6.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/fd5f13b673439dd74792c2dd8094dff527f0e555df16063e599d6a0648fc1d81/popt-1.18-6.amzn2023.0.2.src.rpm
```

### `rpm` package: `publicsuffix-list-dafsa-20260116-1.amzn2023.0.1.noarch`

Licenses (from `rpm --query`): MPL-2.0

Source:

```console
$ dnf --quiet download --source --url publicsuffix-list-dafsa-20260116-1.amzn2023.0.1.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/10fe66ffaf99cd26924c246f96683942fbc37357f4c78bdb046ce9aab6cc3d01/publicsuffix-list-20260116-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `python3-3.9.25-1.amzn2023.0.7.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python3-3.9.25-1.amzn2023.0.7
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6e1fab72cea39fc2dc0a3ffd4a28aaf63ee96373748080364612558e82cc7540/python3.9-3.9.25-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `python3-dnf-4.14.0-1.amzn2023.0.7.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-dnf-4.14.0-1.amzn2023.0.7.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5bf69cc9173eb7566be99a1a9f72eed8b79eec7537f230236a79bce63a97e93a/dnf-4.14.0-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `python3-gpg-1.23.2-182.amzn2023.0.1.x86_64`

Licenses (from `rpm --query`): LGPL-2.1-or-later AND MIT

Source:

```console
$ dnf --quiet download --source --url python3-gpg-1.23.2-182.amzn2023.0.1
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/89737284680e7d5cd52267bb7e21285ad753a5233ab0bd132644ce93141545ae/gpgme-1.23.2-182.amzn2023.0.1.src.rpm
```

### `rpm` package: `python3-hawkey-0.69.0-8.amzn2023.0.8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-hawkey-0.69.0-8.amzn2023.0.8
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/548ff72725aa7fc6ef07672f1f6a751b8eaa16ff069e2c3d4f12daa168185507/libdnf-0.69.0-8.amzn2023.0.8.src.rpm
```

### `rpm` package: `python3-libcomps-0.1.20-1.amzn2023.x86_64`

Licenses (from `rpm --query`): GPL-2.0-or-later

Source:

```console
$ dnf --quiet download --source --url python3-libcomps-0.1.20-1.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2c60a977f6060dee6b1b1801f9ba36cb52d0726e5be1d1f8759d72fee63971af/libcomps-0.1.20-1.amzn2023.src.rpm
```

### `rpm` package: `python3-libdnf-0.69.0-8.amzn2023.0.8.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-libdnf-0.69.0-8.amzn2023.0.8
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/548ff72725aa7fc6ef07672f1f6a751b8eaa16ff069e2c3d4f12daa168185507/libdnf-0.69.0-8.amzn2023.0.8.src.rpm
```

### `rpm` package: `python3-libs-3.9.25-1.amzn2023.0.7.x86_64`

Licenses (from `rpm --query`): Python

Source:

```console
$ dnf --quiet download --source --url python3-libs-3.9.25-1.amzn2023.0.7
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6e1fab72cea39fc2dc0a3ffd4a28aaf63ee96373748080364612558e82cc7540/python3.9-3.9.25-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `python3-pip-wheel-21.3.1-2.amzn2023.0.20.noarch`

Licenses (from `rpm --query`): MIT and Python and ASL 2.0 and BSD and ISC and LGPLv2 and MPLv2.0 and (ASL 2.0 or BSD)

Source:

```console
$ dnf --quiet download --source --url python3-pip-wheel-21.3.1-2.amzn2023.0.20.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/219c1fd03beae74d5c2fad968eb0d74fa38b749974c729ccf44d3fa6f9f27a67/python-pip-21.3.1-2.amzn2023.0.20.src.rpm
```

### `rpm` package: `python3-rpm-4.16.1.3-29.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url python3-rpm-4.16.1.3-29.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2527ab9e1825bc6ad87e881431c9245a260dfaae70d820a8769dcb4f2cb38abc/rpm-4.16.1.3-29.amzn2023.0.6.src.rpm
```

### `rpm` package: `python3-setuptools-wheel-59.6.0-2.amzn2023.0.6.noarch`

Licenses (from `rpm --query`): MIT and (BSD or ASL 2.0)

Source:

```console
$ dnf --quiet download --source --url python3-setuptools-wheel-59.6.0-2.amzn2023.0.6.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/c44691f765d007b73713dc441a041b5bda6a4b373652a07a0458cc6f897e0472/python-setuptools-59.6.0-2.amzn2023.0.6.src.rpm
```

### `rpm` package: `qrencode-libs-4.1.1-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url qrencode-libs-4.1.1-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/05203fe5a77411872696f33524f3643aa6a15ab9dd5d47623204d18c41bec64e/qrencode-4.1.1-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `readline-8.1-2.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url readline-8.1-2.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/236522110da6f9a9e2381da4a8a6b04625bebfcc6826497eea5838226c2f6ecb/readline-8.1-2.amzn2023.0.2.src.rpm
```

### `rpm` package: `rpm-4.16.1.3-29.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url rpm-4.16.1.3-29.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2527ab9e1825bc6ad87e881431c9245a260dfaae70d820a8769dcb4f2cb38abc/rpm-4.16.1.3-29.amzn2023.0.6.src.rpm
```

### `rpm` package: `rpm-build-libs-4.16.1.3-29.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-build-libs-4.16.1.3-29.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2527ab9e1825bc6ad87e881431c9245a260dfaae70d820a8769dcb4f2cb38abc/rpm-4.16.1.3-29.amzn2023.0.6.src.rpm
```

### `rpm` package: `rpm-libs-4.16.1.3-29.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-libs-4.16.1.3-29.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2527ab9e1825bc6ad87e881431c9245a260dfaae70d820a8769dcb4f2cb38abc/rpm-4.16.1.3-29.amzn2023.0.6.src.rpm
```

### `rpm` package: `rpm-sign-libs-4.16.1.3-29.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): GPLv2+ and LGPLv2+ with exceptions

Source:

```console
$ dnf --quiet download --source --url rpm-sign-libs-4.16.1.3-29.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2527ab9e1825bc6ad87e881431c9245a260dfaae70d820a8769dcb4f2cb38abc/rpm-4.16.1.3-29.amzn2023.0.6.src.rpm
```

### `rpm` package: `sed-4.8-7.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url sed-4.8-7.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/6984c7088347ffa40afb5e4e102396b0ae1a11af59e6afc04c1500e100521d7b/sed-4.8-7.amzn2023.0.2.src.rpm
```

### `rpm` package: `setup-2.13.7-3.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url setup-2.13.7-3.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5039da404de01f584d0a4a717c5212948045a2d4feacadf42f4af1c8af7fdb3e/setup-2.13.7-3.amzn2023.0.2.src.rpm
```

### `rpm` package: `shadow-utils-4.9-12.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): BSD and GPLv2+

Source:

```console
$ dnf --quiet download --source --url shadow-utils-4.9-12.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2dd3ced29dd7859d55e174dbfe44044e114f71acb26a2b5f894afbbe86da8584/shadow-utils-4.9-12.amzn2023.0.4.src.rpm
```

### `rpm` package: `sqlite-libs-3.40.0-1.amzn2023.0.8.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url sqlite-libs-3.40.0-1.amzn2023.0.8
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/1c10100f0da782fe13225a58a503ba583515d7c15b8fb1a8416eb8e169beb5d3/sqlite-3.40.0-1.amzn2023.0.8.src.rpm
```

### `rpm` package: `system-release-2023.12.20260710-0.amzn2023.noarch`

Licenses (from `rpm --query`): MIT

Source:

```console
$ dnf --quiet download --source --url system-release-2023.12.20260710-0.amzn2023.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/946c73a13a24cb6217d42410e6b3b94091732875c9ab8700deb978b86e8b3dca/system-release-2023.12.20260710-0.amzn2023.src.rpm
```

### `rpm` package: `systemd-252.23-12.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-252.23-12.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/02a8f035d18719fc09b997e7061b008b26a82c20554e005c026d18c2a080f44c/systemd-252.23-12.amzn2023.src.rpm
```

### `rpm` package: `systemd-libs-252.23-12.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT

Source:

```console
$ dnf --quiet download --source --url systemd-libs-252.23-12.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/02a8f035d18719fc09b997e7061b008b26a82c20554e005c026d18c2a080f44c/systemd-252.23-12.amzn2023.src.rpm
```

### `rpm` package: `systemd-networkd-252.23-12.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-networkd-252.23-12.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/02a8f035d18719fc09b997e7061b008b26a82c20554e005c026d18c2a080f44c/systemd-252.23-12.amzn2023.src.rpm
```

### `rpm` package: `systemd-pam-252.23-12.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-pam-252.23-12.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/02a8f035d18719fc09b997e7061b008b26a82c20554e005c026d18c2a080f44c/systemd-252.23-12.amzn2023.src.rpm
```

### `rpm` package: `systemd-resolved-252.23-12.amzn2023.x86_64`

Licenses (from `rpm --query`): LGPLv2+ and MIT and GPLv2+

Source:

```console
$ dnf --quiet download --source --url systemd-resolved-252.23-12.amzn2023
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/02a8f035d18719fc09b997e7061b008b26a82c20554e005c026d18c2a080f44c/systemd-252.23-12.amzn2023.src.rpm
```

### `rpm` package: `tar-1.34-1.amzn2023.0.4.x86_64`

Licenses (from `rpm --query`): GPLv3+

Source:

```console
$ dnf --quiet download --source --url tar-1.34-1.amzn2023.0.4
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5a1f7da086290133e9d24d6eca3d019c9ef716a74f63576097d26661dc95baf2/tar-1.34-1.amzn2023.0.4.src.rpm
```

### `rpm` package: `tzdata-2026b-1.amzn2023.0.1.noarch`

Licenses (from `rpm --query`): LicenseRef-Fedora-Public-Domain AND (GPL-2.0-only WITH ClassPath-exception-2.0)

Source:

```console
$ dnf --quiet download --source --url tzdata-2026b-1.amzn2023.0.1.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/c170ac39298a11ef1767d5b304e39fb9c403f6d6c4222f3219cb99d4c71909d1/tzdata-2026b-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `util-linux-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `util-linux-core-2.37.4-1.amzn2023.0.5.x86_64`

Licenses (from `rpm --query`): GPLv2 and GPLv2+ and LGPLv2+ and BSD with advertising and Public Domain

Source:

```console
$ dnf --quiet download --source --url util-linux-core-2.37.4-1.amzn2023.0.5
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/07f69242656102a7c2cefbb5f5e9e598c89da75e326ff0656205ec95239430cd/util-linux-2.37.4-1.amzn2023.0.5.src.rpm
```

### `rpm` package: `which-2.21-26.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv3

Source:

```console
$ dnf --quiet download --source --url which-2.21-26.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/0ec4bfba149c3d82d3924d60802c4878107bb4b79fcfaff7a7ac7d1b1d4bbc1f/which-2.21-26.amzn2023.0.2.src.rpm
```

### `rpm` package: `xkeyboard-config-2.41-1.amzn2023.0.1.noarch`

Licenses (from `rpm --query`): HPND AND HPND-sell-variant AND X11 AND X11-distribute-modifications-variant AND MIT AND MIT-open-group AND xkeyboard-config-Zinoviev

Source:

```console
$ dnf --quiet download --source --url xkeyboard-config-2.41-1.amzn2023.0.1.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/2cc4e0ec62a1654c90b07a72d63c06e28dd781e7dc2640818ef3c6766acde10f/xkeyboard-config-2.41-1.amzn2023.0.1.src.rpm
```

### `rpm` package: `xml-common-0.6.3-56.amzn2023.0.2.noarch`

Licenses (from `rpm --query`): GPL+

Source:

```console
$ dnf --quiet download --source --url xml-common-0.6.3-56.amzn2023.0.2.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/d8ae948bf9724a633a8cac71f26118e58f421263fe05ce13267c034e8e8f4c89/sgml-common-0.6.3-56.amzn2023.0.2.src.rpm
```

### `rpm` package: `xz-5.2.5-9.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): GPLv2+ and Public Domain

Source:

```console
$ dnf --quiet download --source --url xz-5.2.5-9.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4d580fbb93e0ef7ee56606d496d780d5c80b9e2505ba176d44032dde2149b6ab/xz-5.2.5-9.amzn2023.0.2.src.rpm
```

### `rpm` package: `xz-libs-5.2.5-9.amzn2023.0.2.x86_64`

Licenses (from `rpm --query`): Public Domain

Source:

```console
$ dnf --quiet download --source --url xz-libs-5.2.5-9.amzn2023.0.2
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/4d580fbb93e0ef7ee56606d496d780d5c80b9e2505ba176d44032dde2149b6ab/xz-5.2.5-9.amzn2023.0.2.src.rpm
```

### `rpm` package: `yum-4.14.0-1.amzn2023.0.7.noarch`

Licenses (from `rpm --query`): GPLv2+

Source:

```console
$ dnf --quiet download --source --url yum-4.14.0-1.amzn2023.0.7.noarch
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/5bf69cc9173eb7566be99a1a9f72eed8b79eec7537f230236a79bce63a97e93a/dnf-4.14.0-1.amzn2023.0.7.src.rpm
```

### `rpm` package: `zlib-1.2.11-33.amzn2023.0.6.x86_64`

Licenses (from `rpm --query`): zlib and Boost

Source:

```console
$ dnf --quiet download --source --url zlib-1.2.11-33.amzn2023.0.6
https://cdn.amazonlinux.com/al2023/core/guids/afbfb1520b8c3c502390fae871ec490d87e317f5b58a51483259c2b11a5e16c0/SRPMS/../../../../blobstore/73c5fdcb0e1b3b098bed7be6394b7f20a681ad5d8dd143f07da30707cb8b2166/zlib-1.2.11-33.amzn2023.0.6.src.rpm
```
