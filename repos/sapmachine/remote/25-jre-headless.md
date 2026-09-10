## `sapmachine:25-jre-headless`

```console
$ docker pull sapmachine@sha256:59966b7da38722e28f303423c1bce6b95df9a0d3f12b6109f1f2632a2910fef0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:7095bd5299b7950ac94d5c903c32f4dd367553e7b88bb4c2b2abef3211760842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89106106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fcc872f5503df8687334b8e2a0a401e18c7f7636de477c820c954cffbea028`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:40:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:40:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43554bd66550a3b1165a31dc9d6f8dc442795748895a4b95d8f881e2244c8be4`  
		Last Modified: Wed, 09 Sep 2026 02:40:58 GMT  
		Size: 59.3 MB (59342853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5454be69907763139a672d07cdf4c3acff263a5f03647ea5c830dda747001ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb78eab201b740a2e4f8db19138451c1a66cf5e61f5eaab4e94e31b3f8c58990`

```dockerfile
```

-	Layers:
	-	`sha256:b05d45a8ab726ebf30ff2c45f8ff04ee32c8438172b3641ca2444abbf24c8eb7`  
		Last Modified: Wed, 09 Sep 2026 02:40:57 GMT  
		Size: 2.3 MB (2280886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1395ea4688ce9ab6ca93a45a105eb59eec7aa7829893b96b527efe06e277a4`  
		Last Modified: Wed, 09 Sep 2026 02:40:56 GMT  
		Size: 12.0 KB (12019 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ffce3688208b5d436f5569125ddc89df78e64863889ee03b29e7f29d11e3abd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87234186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15203bc2012a2c06c5c2ab8911cccdcf9128b0910f87eca87d714b3b170003c4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:35:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:35:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f37cdfef02f184fcc5a4f689a150a76c9861f2f42e65ee32d1d593b81d794b`  
		Last Modified: Wed, 09 Sep 2026 02:35:58 GMT  
		Size: 58.3 MB (58294171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:20dd8b4ee0d60473d16bafcb1f41304309f116a6b178b2c81741c47e63d30065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c76ef3c1c79c522dbb00df6a0b1f12b96a2e035f7a6fdbf9ba4f2d57df6f4b10`

```dockerfile
```

-	Layers:
	-	`sha256:169fad36e4ab8aa7c50561964e6fec4b03383c62574ca33c6d3d1f2b2d725903`  
		Last Modified: Wed, 09 Sep 2026 02:35:56 GMT  
		Size: 2.3 MB (2281426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:490111dbba1d1edeea0d60a9777e1cc810c98ed072133f4d6643e15438a39082`  
		Last Modified: Wed, 09 Sep 2026 02:35:56 GMT  
		Size: 12.2 KB (12208 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless` - linux; ppc64le

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

### `sapmachine:25-jre-headless` - unknown; unknown

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
