## `sapmachine:21-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:6e639614a40d6ece3df9f8bd8dd37be03867e8a8f6e559a092b77d592829e2fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:9af84a8a9e052da24ab84aef324fa7343ee6908d451c194c83b22e99b3fba5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92170458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0504493265b9694b7830627096b2be6ec51d7cfbdfeee4a833fe76fe9652a19`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:39:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ccc036c6d1e902187a8e6d2303e8d3f57657cd7e4ad627da2e73c0742d41986`  
		Last Modified: Mon, 26 Oct 2026 23:39:55 GMT  
		Size: 62.4 MB (62402846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:177f03e98313baa2470d8e953fd06155e84ada8d9c3a1236d6c09a7a40ea32f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504501b367ca59a21cd045e92b5a4baf86b32cfa9bf06de4aaf01d284586ec60`

```dockerfile
```

-	Layers:
	-	`sha256:7f62ee3f3b8d128bb81687c596a35db5e9bd05f11c66688ef24bbcbf72b93dd3`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 2.3 MB (2275400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b0e857a97c605bf253328f5063072b8bc4d6f37afb288124871ef48b2c643e3`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 11.0 KB (11007 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:48c78c5a2dc46d3570b016b18a0b201a2ceb67aa12d49c3b9b780cdd1efe8a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90520906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2960ae28085a1d5b452e23fd6606cebac4f0f6a831b877ddca90237f6feeb4f8`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:44:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:44:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf5d7c30803243919ab200656dba6d6b51841bf2e5f1356e563f18d9fcaf25f`  
		Last Modified: Mon, 26 Oct 2026 23:45:04 GMT  
		Size: 61.6 MB (61580780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4498a116c705c9cf3266a811dfc4f658ca1aa9ffa0d30d8fdb2683d5abb7c626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2287066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e237bcc2e032260a0beb3e983f48109865e0f2ecb39cac4ac65be3e01d2338ea`

```dockerfile
```

-	Layers:
	-	`sha256:3a5f14ee854317ec48588f5ca6cecaaaf9cad1fda47784319152ce4a32619998`  
		Last Modified: Mon, 26 Oct 2026 23:45:03 GMT  
		Size: 2.3 MB (2275907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0efab61fd646ca6342018a4d21e0c8651391ad1c3552a30507c3cb25b9d2a16`  
		Last Modified: Mon, 26 Oct 2026 23:45:03 GMT  
		Size: 11.2 KB (11159 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f8f892e1cc93df1e8996ab5b439bbb1d67b30ff7740ce8698a64328856679651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96347627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3646dc03cabe70c13f4d1a68227f492ee79c2f59af644710257d9086e566a37b`
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
# Fri, 23 Oct 2026 19:05:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:05:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 19:05:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d48cede27a01fb42f4b9299655afad0bf29e6350c9038c2ea3d1ec06c59b53f`  
		Last Modified: Fri, 23 Oct 2026 19:06:28 GMT  
		Size: 62.0 MB (61969637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1779d199ff6a93df39b56f6a171a843d62e62dfef51d5fbb6cd0889c52beb8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cba4e5f679258ff23110d4d09b81bb118bc33576f267d2ff8573e1770d6882b`

```dockerfile
```

-	Layers:
	-	`sha256:1d6da37f459a63596cd15180a26002161054b338cfdd3a915c74a8688da2a1ce`  
		Last Modified: Fri, 23 Oct 2026 19:06:26 GMT  
		Size: 2.3 MB (2274805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baef8384598ef19c6699af24bd3cf5198627c09e4c85aff6e62b5687738f5f94`  
		Last Modified: Fri, 23 Oct 2026 19:06:25 GMT  
		Size: 11.1 KB (11075 bytes)  
		MIME: application/vnd.in-toto+json
