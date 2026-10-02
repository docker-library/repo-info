## `sapmachine:21-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:6654cd9c5d1a2e719f49901157d90b024ed5214a0d5703b1bc922ef118ff25d2
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
$ docker pull sapmachine@sha256:cfc4fed5204bc90f4563c8b2a0b773e2a3c19f649defcc22fde4b619dec4bd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88670464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a76a79735c06a15e03dd2f5ed26e157ddf010627c0f33387cf958d772e8d2a`
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
# Fri, 02 Oct 2026 01:39:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d6a99c2818892a037737681933aa97316e8f763ce2c1e8ddba017ee8fe3a63`  
		Last Modified: Fri, 02 Oct 2026 01:39:15 GMT  
		Size: 61.0 MB (60986328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a3cca6ff366393d5a95d5f453046ee882d6cbb71e988795520a7047b38e19fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7b27998542d9a23670635478e1cb5a74f53aaabab81299b7a10eed73fbadc4`

```dockerfile
```

-	Layers:
	-	`sha256:7518bea4203414afb50d2ab886fe3e9c2daa3d8165288ad2e092ebe77b7b78cd`  
		Last Modified: Fri, 02 Oct 2026 01:39:14 GMT  
		Size: 2.3 MB (2295647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:883bcdbc658e2f5188a99fe9179655afe4d37badfc55cef8fa9602d66d10a31f`  
		Last Modified: Fri, 02 Oct 2026 01:39:14 GMT  
		Size: 9.7 KB (9737 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e41819ccfb9f3ec29870f854e9a67f96b764e3d6997b8eb3f42287637a82457d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96061748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b416ff805147687b1fab1ee1e0077e8aca008fb4d9a5758cc1a79a35324e4ba1`
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
# Wed, 09 Sep 2026 04:29:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:29:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:29:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb3d14fb7855648090c5cdd5f3dcf6ff44e246c0a430ced8b9278e500890661`  
		Last Modified: Wed, 09 Sep 2026 04:30:53 GMT  
		Size: 61.4 MB (61359069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5419448f40887f4e7bc481cb92335d75225d2cb64bfbadf759e11e5388417b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ce827c101004095a688f618d6ef3356efd3ccc8d15a6f11fbdfbf0ec9e709a`

```dockerfile
```

-	Layers:
	-	`sha256:4782117e23aae790675309ff952ff757fe41bf45130db03cc564f903499bd03c`  
		Last Modified: Wed, 09 Sep 2026 04:30:51 GMT  
		Size: 2.3 MB (2295389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18493087ba4859605734086f8832ea27366dd04a883f66565379ad90a01cff1`  
		Last Modified: Wed, 09 Sep 2026 04:30:51 GMT  
		Size: 9.7 KB (9677 bytes)  
		MIME: application/vnd.in-toto+json
