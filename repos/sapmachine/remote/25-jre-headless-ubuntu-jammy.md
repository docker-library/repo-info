## `sapmachine:25-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:2ee67e50feb83b537f50d92f25c9f0d7fead3af2093e33fc22e811ff659d9581
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:e26566f9550c1a24968d3f2a4c48c818492079e312deaa590572eb0fcf27d116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88685536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9aac35aa3faacfa62305363a159377dcc2ad6855b98e01e2711623599726fc`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e71529eb050dd3f1de660b2cf4638163bb5a6c35cfce2313bd2943d562446e`  
		Last Modified: Fri, 02 Oct 2026 01:38:33 GMT  
		Size: 58.9 MB (58933909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0e0be72568405547f1df5d04a50564caa3f324d4d2402ded4c5edf977590808c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ed425a1b13b6495dfe75bdc472b36c84b25fbddc7b64d44aaf1ccbbd1f5004`

```dockerfile
```

-	Layers:
	-	`sha256:10826a29ad3037eb4c5bf5d20ac939a575a5e689e3dde1dc7d68c37ccf7c5c05`  
		Last Modified: Fri, 02 Oct 2026 01:38:32 GMT  
		Size: 2.3 MB (2301825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:085e406b3154a0b81cdd1a4ef6d71267817621f5b81c67161594df0cc188a2af`  
		Last Modified: Fri, 02 Oct 2026 01:38:31 GMT  
		Size: 10.3 KB (10332 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e35b08df4ee2f71ea5ebed70cc75754d31ed89c0957a37e5daba478632efd566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85533829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c551de38f733cb09ea2845a364be1922d9a95786cbac01e75baea94011ab54`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60981344326b6bbb04443968ba0b2a41665b846df3950295fb632fe5859938be`  
		Last Modified: Fri, 02 Oct 2026 01:38:35 GMT  
		Size: 57.8 MB (57849693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b316dd5ed8e47b48b470f071fcf9301216a15ae1d5dfd399d318791b063d1f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411e2e531c4d908b9c82013d88b1e49d8900759a4565f82c1e86d02cb74cfd50`

```dockerfile
```

-	Layers:
	-	`sha256:ad22d3fcf6364558515b9c86cb1943d5dc7b026c41917391ca8aa7d89b074adb`  
		Last Modified: Fri, 02 Oct 2026 01:38:34 GMT  
		Size: 2.3 MB (2301518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b204ad6cdfc0edb56133b340039f3c47c06a8e352c33732da78c1cb70987d5cd`  
		Last Modified: Fri, 02 Oct 2026 01:38:34 GMT  
		Size: 10.5 KB (10460 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f5fb6ede17b4dad3fe16d91539524a8784835e4b2ddff5e2abab880ec1920ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92580041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d178d5dde86769128f3de3a00c179aa6061b0ee28f7faefb46d135bf782f0c9f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:39:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:39:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c56e987a1b95bf893ed4d931f718850575028caf6a0b596ac4caeb198aa9998`  
		Last Modified: Fri, 02 Oct 2026 05:39:52 GMT  
		Size: 57.9 MB (57876833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1332a3712e162aaa8e1c04083adf15eb602ef8dd90f36db415ba3549c9168fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c226c30f04032d937fb3e2c1d08ec1ed5ba5aab75d2a569f878ac7a3bbd92ab0`

```dockerfile
```

-	Layers:
	-	`sha256:2b6b5673d078c7f485d64c273ae1cc0d434499f204b9987b20db1bed34981338`  
		Last Modified: Fri, 02 Oct 2026 05:39:51 GMT  
		Size: 2.3 MB (2300649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a9d5e6583cccf11a2af640262bab062f185f0c799a22fc64684fb82e397ade7`  
		Last Modified: Fri, 02 Oct 2026 05:39:50 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
