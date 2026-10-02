## `sapmachine:25-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:7803e175e16491f03e04a851b35e5ca6ae876e0ea28f3bc2dac5feda812db776
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8f744de0a4941cb6fc5f546c2f347b544dd21762808f2b9ca7174cc10bc3e016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254451863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2d4434c0f66ac5342f7f7e16bb4b3a64d937e8d9871dbb72d707db228da376`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 01:38:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b46486ebd9e82b7ec170f8dada8f2c619c202ab63c0d0362ec81e292eba5ee`  
		Last Modified: Fri, 02 Oct 2026 01:39:04 GMT  
		Size: 224.7 MB (224700236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8bada6b726ef92561d6251dbc6b65c3ac7f0020468837bef161ea8f6c0b534c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fb16c1b7548f2b721fd1fe7f1efd49b4b8c904ffbdeac4106e598be9313d66`

```dockerfile
```

-	Layers:
	-	`sha256:6f2068a9d61188f503c323df57d19a77b9456a0e14013f02f591661f24500ee3`  
		Last Modified: Fri, 02 Oct 2026 01:39:00 GMT  
		Size: 2.6 MB (2623626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75af3d947fed7acd59d0e7f68211d543b589864b5f3019257c92121c51ea1637`  
		Last Modified: Fri, 02 Oct 2026 01:39:00 GMT  
		Size: 12.2 KB (12158 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:39dcfc0d8a64e6cf3a0f15b6cfda4d46a56ae299c1c53302be0bfabef59e15f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250109395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365c439b4bcbed7d7fd124345a8858c5fcca7afd462dce5ba749d0971161c75e`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 01:38:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54df125f022f8e7d912250f9ba87083b7c8058d68f7783eecb8cc86c9becd3d3`  
		Last Modified: Fri, 02 Oct 2026 01:38:53 GMT  
		Size: 222.4 MB (222425259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:79c5bd0d000173df6ed9a3025bf672b068dd86ad7100a9869fb9a670305882eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88870d777886e71ba153e8dd6bbe7c57932a697add46a00b82b4d1b057619a0`

```dockerfile
```

-	Layers:
	-	`sha256:1d87812118de84184332e14bbd3910ec8f249b3501e88107108c855396c9a5f6`  
		Last Modified: Fri, 02 Oct 2026 01:38:48 GMT  
		Size: 2.6 MB (2623401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de46cfe8a8c8be8ddf94c754decee71e78270b0e6a56df4e2f2ddd872e27633f`  
		Last Modified: Fri, 02 Oct 2026 01:38:48 GMT  
		Size: 12.4 KB (12358 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3057d6b5d174916ea62379dc95cc38caa26b7c36f3c233afbe2201ac250b5cae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257537396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0ce9f2a39f52076e6ae6bb719108649f3932f033327ff4511b0f4d308784a7`
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
# Wed, 09 Sep 2026 04:08:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:08:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:08:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c640e6d35a84be1cf9ebde73b41d3493c169987e3e1ed7ad9c6116575bb75457`  
		Last Modified: Wed, 09 Sep 2026 04:09:29 GMT  
		Size: 222.8 MB (222834717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:93532b064619af237007c965f5701b7d7eaab86cb33014fe0d025dff53076ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efaa511335294d3a6beaaa753658cccb854da73ffa90d936552e883aabbc34d`

```dockerfile
```

-	Layers:
	-	`sha256:23fe65187048fbcdf0cc45a0670c014d72ae27520d08cbf2cf1620412e117bf7`  
		Last Modified: Wed, 09 Sep 2026 04:09:24 GMT  
		Size: 2.6 MB (2620614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:551e012a4382accfed53ac7711da24add3c2c682b5dac6a75fbd676a59137757`  
		Last Modified: Wed, 09 Sep 2026 04:09:24 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.in-toto+json
