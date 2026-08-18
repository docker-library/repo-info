## `sapmachine:26-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:ec36274a03ee39257dde4a4979f66761bd2aeb845e0ba848f0e0ab12600b7261
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:6ba9c909c5cfa188e09c73762d727500a796fbb19c150dfa40f014340f325b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89629008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a791d92b981caf596850222d5172a95e484c8157c4673fa88d7b4a2b9c57592a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:20:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc9bd34d162ea0efde7c9d1d1c1a204ff5595c2fc9ebb3dd600d7cc8303ab91`  
		Last Modified: Tue, 18 Aug 2026 01:20:16 GMT  
		Size: 59.9 MB (59892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cc29fda1aa0ea8d8775ca7081dcb389aea8fd898555c3b27c7d3e4b3c1963c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9bb54c708e738c8b1b064a7658b84e8735ead0fe45851783eee3489e31d1024`

```dockerfile
```

-	Layers:
	-	`sha256:574a600cc1a02a26b046b72ea9b0b1df20f69f9b059c0bdf8f07987757f6e0b3`  
		Last Modified: Tue, 18 Aug 2026 01:20:14 GMT  
		Size: 2.3 MB (2299827 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b5fa2785b29fde7a82857b806b434fca7a78f31fe6414e3c561c0f7f239d3ad`  
		Last Modified: Tue, 18 Aug 2026 01:20:14 GMT  
		Size: 9.6 KB (9567 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f10d96dcacb4ada39b3ca858fbd117107dece27af64e54aaa0363c1aa40f3654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86482308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b31ea91d23367417eb4e84d0fe428e31c71d09622e5f344f37f49b6b22f729`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:19:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcd5f5c9bf23d3cf891bcb25e628f7163de157d1492dcb3641dbc6c1dd3dce7`  
		Last Modified: Tue, 18 Aug 2026 01:19:59 GMT  
		Size: 58.9 MB (58861855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6e0e9edb0ca8b015633d185cc637a9f393888b1885ac0b00918d184180725785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4af5e92f2f3b78b0c5a3c6162e49a81120b1689e617bfeb1a2a68e6ebb73150b`

```dockerfile
```

-	Layers:
	-	`sha256:9001843be05b7c5626a559f3ff6cf4cd3a2a97c54305a591312351e371e9d7a8`  
		Last Modified: Tue, 18 Aug 2026 01:19:58 GMT  
		Size: 2.3 MB (2299520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e30b610d2e38afb42416eddb4ae2dcb10eeb78d684c9ed1edaeba416f7614f83`  
		Last Modified: Tue, 18 Aug 2026 01:19:58 GMT  
		Size: 9.7 KB (9696 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:db56f8440e48800a50deb0d8442f857eab997ed80420c60df581d02cef788ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93843957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20ccb67cdacab61c048fb26edf7da2a2b06f65ba7d5fc7ec3729efe2911fbbc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:30:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:30:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:30:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcac41aabff530e3c68ccb96a22ddca37aa0934ef774ecb52e77f799d7eb7a93`  
		Last Modified: Tue, 18 Aug 2026 01:31:22 GMT  
		Size: 59.2 MB (59205812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5287f9de0de3dbaa703a1dd9e16a04eaaa418ffc2690ebbd28887de9a47b8a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ceb76dde3910496b7a78afe275d2f53ccfe86cf4a44be3509c8f46db70c7fd3`

```dockerfile
```

-	Layers:
	-	`sha256:15d2c01c0f033c999d7d5739a7f838371ed98d2b31c62892ca1d4b91addec76a`  
		Last Modified: Tue, 18 Aug 2026 01:31:20 GMT  
		Size: 2.3 MB (2298651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e207457ef6c2fb704ded60b5ba736689763e4cb132e50c9c13625df1d97e18c`  
		Last Modified: Tue, 18 Aug 2026 01:31:20 GMT  
		Size: 9.6 KB (9624 bytes)  
		MIME: application/vnd.in-toto+json
