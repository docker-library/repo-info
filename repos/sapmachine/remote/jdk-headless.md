## `sapmachine:jdk-headless`

```console
$ docker pull sapmachine@sha256:a20f432699354b9c1a57e37c920829bca5cf7bb88dc36729671c8e6f8e2139e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:a574a75d50331ce9f38f25dcc7a7f07eceeac8f2a83c26313c22fc7bba22fc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169511940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c59f30edb3b2f66e028013955957e9735a9e30c6ee35798a3e0e5b89e7fddc7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:27:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:27:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8853ce36b73a80789073dac0bdc101008335129f26c737313f4ac503b9a0ab9b`  
		Last Modified: Tue, 18 Aug 2026 19:28:11 GMT  
		Size: 139.8 MB (139759133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8d4705f47e8f5959679a9dbc59cb23fd60a04fb091eedc0f76535c69486d7730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c626599215bef9a27b02d6b12a40232a357c140ec2c3cb3e12a1663f4863d82f`

```dockerfile
```

-	Layers:
	-	`sha256:164507194877c04b58ab4d2f0ad3607d99ef857bc65faa5d34fb4bfc6380bf2c`  
		Last Modified: Tue, 18 Aug 2026 19:28:08 GMT  
		Size: 2.3 MB (2302520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:489ee8dd29595fb17db2265f4e0767e2d21b788f38124932c82290c6247990d5`  
		Last Modified: Tue, 18 Aug 2026 19:28:08 GMT  
		Size: 11.6 KB (11559 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:02f2c5f23f7323c1a24d9625d5421868f01fc536a98f1d00348f58ada14d0261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167687533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5c0ef122868f413d7bf11433dfa220285726759968a4a6f507ac2a5b4fa2ad`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:28:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d389ba4f8cfdaa657290d05ef8af3128d03ba9ea2b82576ff87097e318e0024`  
		Last Modified: Tue, 18 Aug 2026 19:28:21 GMT  
		Size: 138.8 MB (138800298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2770d49fd77e0035c4299333974bb4ea3861681f6d072ba596fce045d605beff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f7e714348ffc6af90d8b434d05b14515485a71b194a8c8cfdfcaadd8c01579`

```dockerfile
```

-	Layers:
	-	`sha256:2857e4ef5b8331a70bd9545eba222d7b0f8ccdca6a9143dce3182b6791a5438a`  
		Last Modified: Tue, 18 Aug 2026 19:28:17 GMT  
		Size: 2.3 MB (2303072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a44b120e49261cd774c814c1f53a71b10778fbbe2330db1999379e40262ee5`  
		Last Modified: Tue, 18 Aug 2026 19:28:16 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2d19c9f614db8744b06630654842e40bbffc1b2e8319019efd0e3c46ca9275e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175581819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db76d1ddad05662bc8668279c266ca9a3e716facea1bd4e9641313f03a93199`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:40:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:40:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 02:40:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a5cc4c366a78f4a62eaf144a623da472408ccf3d684a7f3e60389010332a63`  
		Last Modified: Tue, 04 Aug 2026 02:41:28 GMT  
		Size: 141.3 MB (141271146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e1da31cfc7a959ca22f25c16dce72ea9d68c8e344027f5cb3ea1e32c12f31b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7db4da3f76e5b8ed06e7c42a608dc1f8d23bfa7af49c634ebef8b251ca17180`

```dockerfile
```

-	Layers:
	-	`sha256:27d536ac440a192b8a7f179672e5e10bdbaacde2358d5cb15311e65e51e4160f`  
		Last Modified: Tue, 04 Aug 2026 02:41:25 GMT  
		Size: 2.3 MB (2301331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4151aea1b3c5c9c3c3fb79b29a949b0c2b7da328992a4103d3a0898bc9dd482`  
		Last Modified: Tue, 04 Aug 2026 02:41:24 GMT  
		Size: 11.7 KB (11651 bytes)  
		MIME: application/vnd.in-toto+json
