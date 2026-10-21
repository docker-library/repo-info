## `sapmachine:jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:52865cb6ca316508abe320d91e6272b126a4c4c9404eff5f94857e5494339202
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu` - linux; amd64

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

### `sapmachine:jdk-headless-ubuntu` - unknown; unknown

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

### `sapmachine:jdk-headless-ubuntu` - linux; arm64 variant v8

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

### `sapmachine:jdk-headless-ubuntu` - unknown; unknown

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

### `sapmachine:jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5484bd67363d10252aa7cb761f830e2ef34fad22e831f0cff44eef20e0a249c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171556408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792ca34ed58273b9fac85a7e6e1a74cd9226f54c755459ae4b48e3da2bb09558`
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
# Sat, 17 Oct 2026 02:22:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:22:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce6fb45409938cd61cb0c2660a5eef3b0ec9f8e42a411faed20799dffee2976`  
		Last Modified: Sat, 17 Oct 2026 02:23:02 GMT  
		Size: 137.2 MB (137178418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:821e3e51fa4811ea6f510c2aa398263d7299d5f536361ae340ce7f530d5c9c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5b3977e52ce71f249146a4717c7fb761299885568aff2f893acbf3630966b2`

```dockerfile
```

-	Layers:
	-	`sha256:26f26985eb09ecd9ebf92ad26cd5ae9e7b307866f03c6f1c1df27ce215f66aac`  
		Last Modified: Sat, 17 Oct 2026 02:22:59 GMT  
		Size: 2.3 MB (2298644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d347d6f882e84a6259054d705906d27c711f8e60b65888bc370436aa504e4b02`  
		Last Modified: Sat, 17 Oct 2026 02:22:59 GMT  
		Size: 11.0 KB (10959 bytes)  
		MIME: application/vnd.in-toto+json
