## `sapmachine:27-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:684d4c62f995ef2a2fb130ea50761c3f62545210de8a98048178f9ef91025b67
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:f63bec27d566ee2bbb630e6450cb15916eb0bd6e701afabb80ba5d4ae4c13c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167431112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cc8c63ab7d621074525bb4d2a2c1fc830c264082516deb834921fab24e46e0`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0b6961cca618b67642fe025b487df9a3f5b32eec4f9053fc2bdd1657d18288`  
		Last Modified: Wed, 16 Sep 2026 16:36:21 GMT  
		Size: 137.7 MB (137680861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7a59c360bbcba4579983127caf171564bedac8d0b66ce91b956ea7d656001177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5448683016a7b0f0509cda5a9e8470b93e5467f9e959e26f45c76a4006d5bef8`

```dockerfile
```

-	Layers:
	-	`sha256:ae563b2492fda52e23e5d70806c9a57ed629d89da0abd0565307a8de2014513f`  
		Last Modified: Wed, 16 Sep 2026 16:36:18 GMT  
		Size: 2.3 MB (2321138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757f025af662a2d2c75b0998b519b5178e36488558e0f07306e81bae8d3d617a`  
		Last Modified: Wed, 16 Sep 2026 16:36:18 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0dd4c3257058dcce395a26846e5b4d25241269acd63e7a63fcfa0593bb6455de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164400069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1905e7d5b78d5e0b69fef9f53ad633dc31911ce4c26ec4bd3cf382f7d0b9c6f`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b422cd9a2d3e07841fa69e17656cde7f05a1da448d546b6569a026f5f7c87c1`  
		Last Modified: Wed, 16 Sep 2026 16:36:21 GMT  
		Size: 136.7 MB (136717322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9a593e67565a1892b1cb3c0e717364b8b5f54b505d43e257486e784d1a01765d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e9d44da6f4618afd5314a65929963e2710446ad036adf5bbb2783de23a32ab`

```dockerfile
```

-	Layers:
	-	`sha256:767ce72da64d018b10680b8d1b6da8d99df8b6cc6e90a7f0394567d6a6ba56f2`  
		Last Modified: Wed, 16 Sep 2026 16:36:18 GMT  
		Size: 2.3 MB (2320807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57a32e6bfedb314001e927ecc533f101a3aeab0136d9f042be08ed28cae412b3`  
		Last Modified: Wed, 16 Sep 2026 16:36:18 GMT  
		Size: 9.7 KB (9683 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0455b1e08efda3fe5af076def33a8eedd1f56687a6393cc5bc4ad8ee103bdd75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e7276323e8b2282dcdb73ade5b6fa1bac892820546d86cd3e18e4407b7ef63`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:42:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:42:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:42:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d640a594e8e48d839b584033842143ac0b497a24daf34f75ae11d064e1873d0`  
		Last Modified: Wed, 16 Sep 2026 16:43:05 GMT  
		Size: 136.7 MB (136675548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aa4edd4370e254903f510ba3e58c37fa6e15fd8041ff865a2579883ff6512631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a116819a40adec5a2bcaf3cc47aaac0c2f5e92a6bf6acef5207eb6ee0f99d9`

```dockerfile
```

-	Layers:
	-	`sha256:068f83c183c03b3dc57ed96d9a58215e77402186e0d8ba6633e90df1b23ebc4a`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 2.3 MB (2319950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5b93d6889b48ea1c180ff1f876b3a0ac212175a9f7a65116f137be0983e2513`  
		Last Modified: Wed, 16 Sep 2026 16:43:01 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
