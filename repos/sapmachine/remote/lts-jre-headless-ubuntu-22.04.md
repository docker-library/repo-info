## `sapmachine:lts-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:fc1a8ec937e8a97b735e824f1a0313c1d1538183ae46162dba2b4d6cf0d4744c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; amd64

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

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

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

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ceae7c8f9680a1253fce1423126a353c5fa5a188a43fd0bc7c1fe5867bdfe1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92574034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c89515753e984d7bf8fb031c6a3d9f4617f1ac4e358e22180d344bab59887e3`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 04:04:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:04:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:04:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c877d32219bcdf154e59e428354bb8b4ef37dc89c8a726976257bfde327d08b`  
		Last Modified: Wed, 09 Sep 2026 04:05:13 GMT  
		Size: 57.9 MB (57871355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7134bc3e5e2b8feb65863d2f836c4ce3ee14f4f8d119c261f4a4e7197a55a0fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ac9e51f9cfdc418f34af8cf450d761975c9a421c3798fc2e146ba2133b5350`

```dockerfile
```

-	Layers:
	-	`sha256:8b3d1b11fe27112e7a5e827a74357bea8d536cfd6dcf0d846ac096558808eb8d`  
		Last Modified: Wed, 09 Sep 2026 04:05:11 GMT  
		Size: 2.3 MB (2300621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55dbcbeccef48e6420c8cfa41f932cb45875b91e27d272b5a9e6899b67902f59`  
		Last Modified: Wed, 09 Sep 2026 04:05:11 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
