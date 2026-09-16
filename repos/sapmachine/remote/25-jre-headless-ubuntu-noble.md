## `sapmachine:25-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:42719f6f96b82061c60477069645592a770bf362fd824330381103ada6cca08b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:44c9e79621db921dd7357c558ee525f4088a31d521d0ae2e64d0ef93400b0615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89106991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd96c1793965b4f323d593043f555ea52a361614d2158b5e64fd3e66a4dd7c5e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:30:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:30:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5d12112bff4c9bb9a95e8a03561f2f49dc07f9097297de1592b9afffdfe161`  
		Last Modified: Wed, 16 Sep 2026 03:31:08 GMT  
		Size: 59.3 MB (59342875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7fb017bc2a8985c2369c73b1a51cc220a48cc99de0673d39daf907fdacb71240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56845f507d6db37633603bbea101a3afce5e17cb7394e437c001f8b82eccafe5`

```dockerfile
```

-	Layers:
	-	`sha256:76f3057d0d81da1f933adc2df9398909ce74694bc8774bbe9d25f7922bad845f`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 2.3 MB (2280886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9315ace01e1b5d717c1f44828c870b6f97548f3cb0e86593131e4f03784f091e`  
		Last Modified: Wed, 16 Sep 2026 03:31:06 GMT  
		Size: 12.0 KB (12019 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3a043286e3c562e26da05e94dec8b82923e5f6612c7392fe2601849ad80d4d96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87235743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddab78b011b82c5c1b2c22e0d04e2f0daba70eb02f304865a7541e352a925e06`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:30:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:30:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:30:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c30b4233eb9b3a32e64a7cf3cc8304a3dce563d472853d8a4518df85e077af4`  
		Last Modified: Wed, 16 Sep 2026 03:31:12 GMT  
		Size: 58.3 MB (58294163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8b8be2aed61bf3f339ac65ab5358f2c2d1472ebd3e7bf5cadfbb0f8655da49cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db63556d8bb95df722f775551a9dd52303b4404a8c1c453e15691c38c84cbc1`

```dockerfile
```

-	Layers:
	-	`sha256:3f1e924b362bdd71e6c288f9e26c1bdcd2b1ac60ba09f87dfae3df38ba8f1640`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 2.3 MB (2281426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d38340e84f6da71e98cd9f46dcda346708186c32abc8b8c9850005f3e2da99`  
		Last Modified: Wed, 16 Sep 2026 03:31:10 GMT  
		Size: 12.2 KB (12207 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:960342a3e85f7be498e673f2af44521ce766a728b5bdf3239abf54abf317450b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92726545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e315328b8ede4ce332d7249d498b5a7a5f85387827e431c371cda4f4eadd83d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:57:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:57:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 03:57:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81117fd039967c4783821ea56b1c8fbda30ac5475e154abb1068cf30193ba571`  
		Last Modified: Wed, 09 Sep 2026 03:58:18 GMT  
		Size: 58.3 MB (58349666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f6be7e6bf58408d41bc1605688946eaf7e283b324348b8016d1d1daf3917ab0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d11685a96f539aa70415e685bb1ea9b18c17009a6af09b7739a63056a4ddf30b`

```dockerfile
```

-	Layers:
	-	`sha256:86063151b7b2c0d44f355aed08d9e8a957c60a0f8d0e338f786df7072a722977`  
		Last Modified: Wed, 09 Sep 2026 03:58:17 GMT  
		Size: 2.3 MB (2279691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1017b5b000978c97e4b46ba7bd60aadbc561e7f85347d7c4e0ad9a6c17fc756`  
		Last Modified: Wed, 09 Sep 2026 03:58:16 GMT  
		Size: 12.1 KB (12106 bytes)  
		MIME: application/vnd.in-toto+json
