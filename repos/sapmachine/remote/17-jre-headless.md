## `sapmachine:17-jre-headless`

```console
$ docker pull sapmachine@sha256:07afc57d7f21fb9a55337f6001d7993b0e6e800ecc16889401ad17b00e205879
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:1ce58487282d68cee8cef995a34e891cf8d2f41b683408c76083480b91f0c855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86199236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa372ad5d2e73f29c5f143af87cc99b90e1d533b5c5fcbdb03324135417527c`
-	Default Command: `["bash"]`

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
# Sat, 17 Oct 2026 00:40:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:40:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb583c5e02e15880c6a3fec9546643a890ebebd3b6886ad18cd557fef801bf3`  
		Last Modified: Sat, 17 Oct 2026 00:40:46 GMT  
		Size: 56.4 MB (56433478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2ef86957985b4ff90c767a24ca73f48ef780cd42bae9fea6a7b2a68d5e2a7019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30498fa4b68b72a3d6f49e5b37f11337d8b81f96e27e4d68d42c2f20bdf49291`

```dockerfile
```

-	Layers:
	-	`sha256:1e51a0b190e461d6a2c7dc60445f119e55ca025a2fdb4bf4a829bf87e1420c36`  
		Last Modified: Sat, 17 Oct 2026 00:40:45 GMT  
		Size: 2.3 MB (2273700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccca88f85fb1ad45c2b27481e3db9b578e19c2c6cb13d614d01a03fd1146cf98`  
		Last Modified: Sat, 17 Oct 2026 00:40:45 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f21eea474b7050f229fc7c280b69b41d7ffedbdfc236eaa281ed2d6803c49944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84847217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd3a519062674b15120708cff0885d618f6bc1e5c1d3c5ac61329540f51152a`
-	Default Command: `["bash"]`

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
# Sat, 17 Oct 2026 00:40:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 00:40:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1569d91e724dce7358c6ed91ccdc8e2b5e45a9d15ec533ec3f65a39a33428b2f`  
		Last Modified: Sat, 17 Oct 2026 00:40:21 GMT  
		Size: 55.9 MB (55907456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0dd4b1500c58427c4681780cf7369e309aa786332528a6d93ba7474637ec908e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3e2ecda96106c572d7812baa85175158624239cc667e038e27b2117f0ee921`

```dockerfile
```

-	Layers:
	-	`sha256:cb12f9fb16fdba0e4f9deb11f1dc0e7405a9f928aeee2cf44cfc93a33d0065c3`  
		Last Modified: Sat, 17 Oct 2026 00:40:19 GMT  
		Size: 2.3 MB (2274207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57a617de075eb92162f0ddd2eecd849e358b46219aba370d74f8898be6f9362a`  
		Last Modified: Sat, 17 Oct 2026 00:40:19 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:99040844c276ed63c97962b497a344f366c244739c92ea3cdeb18981701bc3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90050238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf8220c0acacac102a3730763a2456f5fd6c473055b1194d8655a374fa26a09`
-	Default Command: `["bash"]`

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
# Sat, 17 Oct 2026 02:50:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:50:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Sat, 17 Oct 2026 02:50:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf13b3b3fa71f36d9c508c8740c98cb176402c1f8051d2db846514ff9f6d3012`  
		Last Modified: Sat, 17 Oct 2026 02:50:59 GMT  
		Size: 55.7 MB (55672248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:099dd9b3de257f53bdd7ddec3526a256b381bd37d5f15c179adf1cbb7dc81a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdab4ef33083d7dae27e5e84ed026b720d2dca017363334e727e6cd31d974659`

```dockerfile
```

-	Layers:
	-	`sha256:4c63469abdbc23f71ca4c63625087a81822ddb4f0e8372c08344eff019da693a`  
		Last Modified: Sat, 17 Oct 2026 02:50:57 GMT  
		Size: 2.3 MB (2273117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0319ed780bbfd8a3f475c93de206a5e935434f22962bc07a8530d98784843b9`  
		Last Modified: Sat, 17 Oct 2026 02:50:57 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
