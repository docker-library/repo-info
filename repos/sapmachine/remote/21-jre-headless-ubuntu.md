## `sapmachine:21-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:431580767a6cce07f3a470489178de459c0433ec6e6b51804010e8e36774425a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:3d7113257136f542fe34af27fe16f1cbfd8e63b8a35567df7194a5f0a27ba5ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91940087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64503974c08f3f2e24ef3c2e96e6a00947bfc1f9427ef18266c0732ac4e6093`
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
# Wed, 22 Jul 2026 18:24:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:24:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a25f4e7662aaaf80feda41d70cfbe29dd33167272e9c5500e21b56450275901`  
		Last Modified: Wed, 22 Jul 2026 18:25:01 GMT  
		Size: 62.2 MB (62204486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ba16b0eb7111556a71907736d5ad9799b99c3d93b80dddb463fad5926ec5350e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cc4bb833f72f2c6ceeb6dee6a1dfd86b6ba7e60003bcaa5f28aab835593dd1`

```dockerfile
```

-	Layers:
	-	`sha256:bff4702df7b18b720efad8f6d870f601e8b662c454a1341bc942508b7536545b`  
		Last Modified: Wed, 22 Jul 2026 18:25:00 GMT  
		Size: 2.3 MB (2274636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38e8a69ca0a57f55e3085fe03affc010098dd9db6da63d0dcdc9aa10d6b1e149`  
		Last Modified: Wed, 22 Jul 2026 18:25:00 GMT  
		Size: 10.2 KB (10229 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e07c107c3c461bc66c38ffac293e22b570ebecc19decd07b78cfd7a272fb6abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90266103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461d6a6a27641f1774b8d3fe3df7cf65ee5b606ba78d6fbe64c1c2eca499b56b`
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
# Wed, 22 Jul 2026 18:22:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:22:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68398952451ee8d010010d3bf1f2b96d3d86a5c05e6435a0e0b90d84a820c8b`  
		Last Modified: Wed, 22 Jul 2026 18:22:47 GMT  
		Size: 61.4 MB (61381923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:936cacce2ae29928b440041af094a47d4b92a3aad6c9936babd5269e3559ed9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:869402db8cbf1c7ee8ea54c773885629e57d73a06511d5d71e383bdf4733795d`

```dockerfile
```

-	Layers:
	-	`sha256:c4a17c792b631deec90aa7753aaba71cc1a4f0a9ed6a43034362dc4e65a216a5`  
		Last Modified: Wed, 22 Jul 2026 18:22:45 GMT  
		Size: 2.3 MB (2275143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c92205432314fde7e39d1d604ac3430e771802f013a39663fdbb29f91e713001`  
		Last Modified: Wed, 22 Jul 2026 18:22:45 GMT  
		Size: 10.4 KB (10379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e8fa783e2c24ada9a1dfdff0638b5c5689c9e34fea280d15585613c3eb6ef27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96151540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e426fa3e431baf7f04d79ad4805e98a02bad142bec4778e7cca1d1c04486bd0c`
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
# Wed, 22 Jul 2026 18:32:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:32:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:32:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edea4f08103c8646b78e04cfa0941e658bf6e2efca4a64e01b55c3f98e44bfa`  
		Last Modified: Wed, 22 Jul 2026 18:32:35 GMT  
		Size: 61.8 MB (61838064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:335040ff64ced767a24e6440ef25a42b2cb0c6950d8c753230ead32319b89381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78997b50f22e897fba3ac4d87fa2f000b0f5bd6dd48d16ad80511b4a9b69891c`

```dockerfile
```

-	Layers:
	-	`sha256:16a323bc2e74be871b31299922c3879a36982805486090a2a7e929a38b6d3ab5`  
		Last Modified: Wed, 22 Jul 2026 18:32:33 GMT  
		Size: 2.3 MB (2274053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db683359f23b3dddd50c713b9c62525fa3b9ca0f5cee4fc5d6a3150d28d332c4`  
		Last Modified: Wed, 22 Jul 2026 18:32:33 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.in-toto+json
