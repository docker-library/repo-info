## `sapmachine:21-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:fc8f8f085bb71d1cebc38c6077bfbf26de1f8e6732a8bdd1e982dde1dfd0a535
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:9cf03cf2ee2d18ea79d1bd760144878d65fdff9adcb878ea10b7ca58005cfc8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91571751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f483dd89b470922b25c4889eb21427cc0abe9aeb0c31b7eeba9970ad798b203d`
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
# Fri, 02 Oct 2026 01:39:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f62b6a996cab9db79d3144124568f9e8fec2c1f0bfe224a92690212286c858`  
		Last Modified: Fri, 02 Oct 2026 01:39:15 GMT  
		Size: 61.8 MB (61820124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2767f06c3c85d12e747e70bdac1c84d90baaee7c41b7e54e17b51ea00d6a38a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ddf6cd535f36ca49e28adc06eb4bfa278035762a7bc44fa5d148e7fba623f3`

```dockerfile
```

-	Layers:
	-	`sha256:d5f0d80011af765e08d319fc553106887acfaf686dec2cb320b1a8e97bb4c028`  
		Last Modified: Fri, 02 Oct 2026 01:39:13 GMT  
		Size: 2.3 MB (2295975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c681b9cdf3aa013ed9e996981340d2c15af74338a34049860f55634b6f340903`  
		Last Modified: Fri, 02 Oct 2026 01:39:13 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d8553b3c05c9a581ada0eacdd8e08d0e1360b48231767715f24b89ac1299c136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88668337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcb0c999ab921c1ab734a43742c83a395e554b5181a41e73d6d23a93e5db9de`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8be0b31eaa913c306eaae5f99c841926d378eb1781b922727d127c975377c3c`  
		Last Modified: Sat, 17 Oct 2026 00:40:06 GMT  
		Size: 61.0 MB (60983614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:25710ff3c4df9b6c0b77c084b83f7059fee25de474e129f710ba5c794bfcba81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f35f12850dd89342560d867c6c540c289a6b2c90536830742928704d4b45dbd`

```dockerfile
```

-	Layers:
	-	`sha256:5056f3134969e05e63f20692afae5b1c8bc0569f62f0bee329c96bfd06e05b1b`  
		Last Modified: Sat, 17 Oct 2026 00:40:04 GMT  
		Size: 2.3 MB (2295647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8783c1b6874e1342f1640a19a9345fd398dece8ec054c163cde089b1171fbc`  
		Last Modified: Sat, 17 Oct 2026 00:40:04 GMT  
		Size: 9.7 KB (9737 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4226009c4a3ff3604a4f7c143d5b88d6d8d631b5c04e634c249cce09b1c10b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96067381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd89c098c7c58ca41fac6fc708d8bc28131cf21f88a7faeddde592e88be4c01`
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
# Fri, 02 Oct 2026 05:48:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:48:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:48:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873a6e0946ced3a5eb37f2e9f5d426f0b5b4e171de33d625009bf0c12ea380b2`  
		Last Modified: Fri, 02 Oct 2026 05:48:35 GMT  
		Size: 61.4 MB (61364173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8be49e1350d15256eefb7f77f65be619a439bbde7612fca312d80cbba812471b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2907ededfb658fa81279f9d3ef9fe1e9c11511dfa5497ef8da67db514f2703`

```dockerfile
```

-	Layers:
	-	`sha256:842e910a3ef1d08ba0269ddf95a42b511544a6ed25e459067c1c69f0e6204857`  
		Last Modified: Fri, 02 Oct 2026 05:48:33 GMT  
		Size: 2.3 MB (2295417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca5be416dd2410bf1012ec78077576d52f73914d3909053f2eb0222419cd0f`  
		Last Modified: Fri, 02 Oct 2026 05:48:33 GMT  
		Size: 9.7 KB (9677 bytes)  
		MIME: application/vnd.in-toto+json
