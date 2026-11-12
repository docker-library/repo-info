## `sapmachine:21-jdk-headless`

```console
$ docker pull sapmachine@sha256:b09505fe959617f1b1a1096abfee2c1e10f3f4f03262361d5a01574a7a4f9111
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:6ee37b71039d874aa80d366784fc801c07f68c9b40be086661a14df8a485f5eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248320495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75dbc12a3c182cbfed726aefe38112ec02063b5727ea06fa1f38328a8c76501`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:40:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33db651a6fa408b149ab98c60ffa3be8af73b4428fe37500bc9223373695aa0`  
		Last Modified: Wed, 11 Nov 2026 23:41:02 GMT  
		Size: 218.5 MB (218527272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fe04c11add272f643a6e3465fd961d5442022fc8e4b6a0932a4f6a211a5b2cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2370532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5dbef4bfa7167314ba401317d73aa96e109fc9a27a85199d29d58d431a3ad3`

```dockerfile
```

-	Layers:
	-	`sha256:eb55cb58ee03a25428eb3b1d285989fc0ffab6bfdefcf258a5a9899976cd5b73`  
		Last Modified: Wed, 11 Nov 2026 23:40:58 GMT  
		Size: 2.4 MB (2359525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cdc9348c93ee83c3a94f2d3bfdd2abf278d9bdb2dec63ee19c98bd6ea44e231`  
		Last Modified: Wed, 11 Nov 2026 23:40:57 GMT  
		Size: 11.0 KB (11007 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e5949a769910e7c6cdbada6dfbba54acb76d04ccb5d1497f3d25d3b527d92205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245695500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97474a93cd7bf812288f3f47b2051e5864ed73dae246e873841fef016d9df8b5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:43:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:43:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e633c552a8b85bec80491cba29446a4b1fdac854db78a7909a65ce0254648c3`  
		Last Modified: Wed, 11 Nov 2026 23:44:03 GMT  
		Size: 216.7 MB (216730242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:05f7fcffca69c081627e338c70596da5b13d1a801f9465e0ce121192ee7bd18f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2371192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b543831338c23fb04dd58e4457ac8acf4c46b96a2aebf4e18aa66bdf0e7c977f`

```dockerfile
```

-	Layers:
	-	`sha256:928aee514b8d0152fc65b3ce9f6355c8ef8e5672e2d642634ec95190fbf90fd9`  
		Last Modified: Wed, 11 Nov 2026 23:43:59 GMT  
		Size: 2.4 MB (2360032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:186f7f8f5dd1dce8876caefe8e8a79236b6febcb8d55bf637f572674c527fd83`  
		Last Modified: Wed, 11 Nov 2026 23:43:58 GMT  
		Size: 11.2 KB (11160 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e56c888574e13b64931d6701146eb99d8e55a51cd971eafec68eb6b5e12052c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252513253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab8bd9c446a783fb4bc03b5adf3f2aef12a571591580e28c245a4ad2d093b0a`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:39:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:39:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:39:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213095a5169aeae168ef08a4883b1ab4be65a14cdf981618a6368a9e92967597`  
		Last Modified: Tue, 27 Oct 2026 07:40:15 GMT  
		Size: 218.1 MB (218134945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c229262ec87e97bc501aaea1175e3933238b493e986acf66482582f334f470d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35db141f031aedabae23ee901bba65cd669f07c88237fd0613cbd91196c15fe`

```dockerfile
```

-	Layers:
	-	`sha256:095e52edde555c323689d7c49e8439326812525f1f902a738ac04284db21dd24`  
		Last Modified: Tue, 27 Oct 2026 07:40:11 GMT  
		Size: 2.4 MB (2356392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:530e8ee1e49f7abe7ef2e4531671644866e4bd403bb6b2520b48191051a0cec2`  
		Last Modified: Tue, 27 Oct 2026 07:40:11 GMT  
		Size: 11.1 KB (11076 bytes)  
		MIME: application/vnd.in-toto+json
