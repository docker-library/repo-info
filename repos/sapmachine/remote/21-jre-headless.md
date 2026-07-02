## `sapmachine:21-jre-headless`

```console
$ docker pull sapmachine@sha256:0fc9bceec6f3a56438c567fa1ebbcd94459deb77db492df3890e4f48eeffa9f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:bacb061eae299aa301c555fe82917443984aa13b4e48618029cf922c69735150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89389244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36639f941a7c4e7f98871b85d8569907a9a25af5fb9019ec67846beac9d9ced`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:37:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:37:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f32ee03b07e9d9f08e5f4faf32162a0584ff55ac5a921f11849256480e1137`  
		Last Modified: Thu, 02 Jul 2026 02:38:02 GMT  
		Size: 59.7 MB (59653643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ce040daba75fa7ef5c500648de738882dfd56fd3f03651e7ed2f5b6786d2b0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b82fa862a59e0f09a3a2fddefc6905effbdcaa03eec7d85debdf43cc41429f3`

```dockerfile
```

-	Layers:
	-	`sha256:48b37944835681d52577a44a08c0f1c788d2c85bf643984ec419ddff1457f75a`  
		Last Modified: Thu, 02 Jul 2026 02:38:01 GMT  
		Size: 2.3 MB (2275900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef579908283e77695bd250512eed85475b8b8a1fa89d05be51234ce2de704711`  
		Last Modified: Thu, 02 Jul 2026 02:38:01 GMT  
		Size: 10.2 KB (10229 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1a145cdff67b32f5ce5beaca1cb6e065c01a59074620f0af1e5712e988e59ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87730342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc985f08cf24949b338e53b13acc3690621e9ae47ce84a6a7583cbaa8f30405`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:37:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:37:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ff7194d9b424cf2c94a956a97b717bbd4941fbfeb764f00281e2eda2c4f97c`  
		Last Modified: Thu, 02 Jul 2026 02:37:13 GMT  
		Size: 58.8 MB (58846162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:216196839b8bda3d3e2e853c21c7321466d87c10e2df3565d305556f5f2f7229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ea163e6d26fc617a5d6107a859527743ac6dcc6fa178549b182bb859ef02c4`

```dockerfile
```

-	Layers:
	-	`sha256:38680c8294e5c34f95f4727177e62cf552e5657875878a6d5b8b33fa6120b066`  
		Last Modified: Thu, 02 Jul 2026 02:37:12 GMT  
		Size: 2.3 MB (2276407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f938f731c5f777eca770f6e527d947e106f529aa01905ffe75e941c924ba43`  
		Last Modified: Thu, 02 Jul 2026 02:37:12 GMT  
		Size: 10.4 KB (10381 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a5c9314efed86899d1b55ccf51534cb67bd6d43cc10c35c0887c2f0dbd839e98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 MB (95095359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2bdb655a3b535785b2023549011823a08693e803308f44c4958aea12be56afd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:37:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:37:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 03:37:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6059a331c1e44845526bd844ba9e5f4f8c4157a5c0fa9459d186249a29adb5a7`  
		Last Modified: Thu, 02 Jul 2026 03:37:45 GMT  
		Size: 60.8 MB (60781883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1d352f827d943d328d3eb2d1f7a0aa02f238f74a79edaa7f7cac288ff895613f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5c91c45e08693072d986ac859d41978fae84182e2c8a38dc42ef12e12ef80a`

```dockerfile
```

-	Layers:
	-	`sha256:86b8bc7db4d648aba2eb1d2fa5b60774cb19e280bfd157436517c5e2863fa9aa`  
		Last Modified: Thu, 02 Jul 2026 03:37:43 GMT  
		Size: 2.3 MB (2275317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9800fec90c973a145fee1755fdcedec7716a898e8c81a9047c4fe69a3cec81bc`  
		Last Modified: Thu, 02 Jul 2026 03:37:43 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.in-toto+json
