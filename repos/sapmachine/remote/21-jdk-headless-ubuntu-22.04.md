## `sapmachine:21-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:875a336dab2a51b4ce6a54a94662e2acf7b63866797f397707284e6b7511f771
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4a91a19a37bf21503162f5113555e552f7973c699d27dcc7202aa3bb9989a1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247428349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34807ec41a8e1777a19d629b1e6b4a211a4a95c8cff7c192594b928bc745fa8c`
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
# Fri, 02 Oct 2026 01:39:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6764288bac1aaa0c8f9a4829e483464c1a911841855a6d189cc9c16cc2fd40bf`  
		Last Modified: Fri, 02 Oct 2026 01:39:46 GMT  
		Size: 217.7 MB (217676722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6b1372a766ae61d0a4859a657b5c3df206e089ac642c5b3be6459d6470a99ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae21e32b35d673bef213f2bced0587dea026f6132961349f5b497f1c766da43`

```dockerfile
```

-	Layers:
	-	`sha256:826fc99a3e46571942d91ab74685b3dcac265aaa9fa838adeee37ac3e1b5ae5f`  
		Last Modified: Fri, 02 Oct 2026 01:39:42 GMT  
		Size: 2.4 MB (2379496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:261ed1385b0b9c7211d76c167393913789ec6fbf2425d0ce431c8fa8f071a05a`  
		Last Modified: Fri, 02 Oct 2026 01:39:42 GMT  
		Size: 9.6 KB (9637 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:25f9afa2e89a317aed032a2656463c6278404c7ba7756c3f3fb653a11485c72e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243543513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3301bfd23041aca4ee69353e0b9fa85d751807fcde8c323b3a59c42ade4869`
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
# Fri, 02 Oct 2026 01:39:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be35061fae9b21ab334ffe1f2bc51c51423b4d9126071109e0a348f77cc0393`  
		Last Modified: Fri, 02 Oct 2026 01:39:48 GMT  
		Size: 215.9 MB (215859377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:31f667e03815dcce26c643ab806deded1129c3e06bdbef6cfc78ad09af140cae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ba9e8cb3a1bf3783066254877a6daa53d68d842a0d2d67f8561c7166904bdd`

```dockerfile
```

-	Layers:
	-	`sha256:600d1fff61a77ab0053e1f2d85cb62a74e069d8b814da74ec4d4c7718e3920f7`  
		Last Modified: Fri, 02 Oct 2026 01:39:44 GMT  
		Size: 2.4 MB (2379168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:968d2489b04c723367aafa7db35a9997003216aaf2e6245047319c9cdab55dce`  
		Last Modified: Fri, 02 Oct 2026 01:39:44 GMT  
		Size: 9.7 KB (9742 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2bf06bff0606604ec4de9488356e65ef1be0231774381edb5c51c1c79ee2017d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251992325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0c46ccbf07f886f9debccb26208fdbc9c6d8413fe15a198b5fe8ace8bfe539`
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
# Wed, 09 Sep 2026 04:33:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:33:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:33:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab447dae99b043dd3c64077ccdd1625718e39ae73a67035b185cf7f164fcc47`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 217.3 MB (217289646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3277c6a3e9e6a294ff6d22f4c2a657e99ea7c75f20900c7e0391e98a8eef6cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a4c1df6ab88937fc06bf808dd04cd4e92617a5dd2701200c3739281db45f3a`

```dockerfile
```

-	Layers:
	-	`sha256:706941bb3ba75d81906e2b56d548b5baf022111e128d1f43f288f52318d8eeba`  
		Last Modified: Wed, 09 Sep 2026 04:35:03 GMT  
		Size: 2.4 MB (2376964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:285e925a7408fd6130ba3487143613f914dfa72000e972733c12404e06f5c581`  
		Last Modified: Wed, 09 Sep 2026 04:35:03 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.in-toto+json
