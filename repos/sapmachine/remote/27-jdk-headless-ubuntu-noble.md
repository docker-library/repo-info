## `sapmachine:27-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:b6a3afd92d5440ffb3639e2da581c53e59923939a248b3ac0e0578dea90463e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:a8015e677d66dd59a6733f287bfc8d3296f5359ead1380b63a04ce2caadb11e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167916527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d647cf0550da1fa77ee016019cc39901e5a68daa10dfce7fe08a66290924631`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:11:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1b3b6e5668215210b888aa286f3e4a235392434d35e55659119c01f5f15070`  
		Last Modified: Wed, 21 Oct 2026 22:12:16 GMT  
		Size: 138.2 MB (138150769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:16a2dfc449dc324e31248300ab43c8a05d50a254510c7c43b0d812ec2dc07543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e50fe96df783e3e2d3de9cfb47fd5e039a991bebec13ea757b19792a369bc1`

```dockerfile
```

-	Layers:
	-	`sha256:505e24cc657b6178d076a53d7b51b4cf9720b0e5c95679c0ba8ef581f7f00685`  
		Last Modified: Wed, 21 Oct 2026 22:12:13 GMT  
		Size: 2.3 MB (2300643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d8d09144efb167a580ec93dd7d9b0dc4d8abbf91029b9f16ca5607bf293155b`  
		Last Modified: Wed, 21 Oct 2026 22:12:13 GMT  
		Size: 12.3 KB (12297 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5542a8dd0ba000a3a7956c0cc07604559c45deecdd22b739c805f5df1b8d01f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166166362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4608ec2d777372062a9ed76986fe186c0814616eeb5910540f1a4122a04d91b5`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:44:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:44:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:44:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab8959053b7ea8427ee41be66badc0ae4021d6cf2f0f691aa8d999e7d40c6d`  
		Last Modified: Wed, 21 Oct 2026 22:44:56 GMT  
		Size: 137.2 MB (137226601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:61d0f320425e1a8df1afe0bfdeb1c8a4f142b63eb5c206b9861532e6a019857f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a41e6e662e833f038f71dad331b4d64db0bf564aca670b2046d6e55ff28902`

```dockerfile
```

-	Layers:
	-	`sha256:827d440646cda9672ba22456d4dd180efc7afe3f243d13a473ddd9434427aa50`  
		Last Modified: Wed, 21 Oct 2026 22:44:53 GMT  
		Size: 2.3 MB (2301195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:676ef911a32216132a7b99175638c5de572bf95948959a1bbcfa2b05685f0b97`  
		Last Modified: Wed, 21 Oct 2026 22:44:52 GMT  
		Size: 12.5 KB (12496 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f11de42d3368429962f88bfd64b8a0199f1a8705baff3cd2b221e7ee3ad55e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171596258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4593058bc10748d952cc6df21e421d57ff755999511940f1a3e95d901c25a47d`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 09:51:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:51:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 22 Oct 2026 09:51:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fbfa5393577c28ebf6c3e64c82473d2ecbd1dac1f76c33a3e1da77dda972bb`  
		Last Modified: Thu, 22 Oct 2026 09:52:04 GMT  
		Size: 137.2 MB (137218268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6a498433acd6bdb548dacb562d6e3037b63f1c8d5f248d1274bfdbeedc00e0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7545f155f53895c3aa8c8c427d42d7d4dbab40881dba11a70350e6ec87015eca`

```dockerfile
```

-	Layers:
	-	`sha256:af44e6c1fe8834b574d7576cdbe7ef091e941268ce6bd686d6ca7c3f1b3990b9`  
		Last Modified: Thu, 22 Oct 2026 09:52:01 GMT  
		Size: 2.3 MB (2299454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ac4a7d535698a9ee0126dc7a02264cf2597eae867cd85f80bdc73fa39a5b6a`  
		Last Modified: Thu, 22 Oct 2026 09:52:00 GMT  
		Size: 12.4 KB (12389 bytes)  
		MIME: application/vnd.in-toto+json
