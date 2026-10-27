## `sapmachine:25-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:46794d2560feaba879ceea5e41a464bdb76a661f125cc1e8458ab02a957d01aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:0f0336c25a8139be59cf30461aa4c0a602c66ca7a92e53bf6e408bbb7fa2d2a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90748049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce1cce0baa28651d69c8f4841feae5262020120c9c31dc7aec2e437a75ccf6d`
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
# Mon, 26 Oct 2026 23:38:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:38:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6aa4cebc21f43a2da9c0a2aee4df82d5b41d6791e4ebb2e48447a8941b9a69f`  
		Last Modified: Mon, 26 Oct 2026 23:39:10 GMT  
		Size: 61.0 MB (60980437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b97eb2b11a72c008ab173c882f14d50e9ce50496f1cde4238897d84108ee7a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714c46586af9395cdffbc105456a5bc4e19646972da37530cdee3ccd948e37e0`

```dockerfile
```

-	Layers:
	-	`sha256:2ef618675e02bd97df8cd60317bb9cfec08f0fcaed65bdbf7371d5c8773f7475`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 2.5 MB (2527972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5e8688c52340db58d678649d81f5ba33c9834056d86994817935863523d1be1`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 11.8 KB (11801 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:04d6851447b94b37d8f57f0ddd716d3cc988bd64fcd06d1c714aa6c29de190d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88876066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dc613ee6732acae02c5f5f6ba1bbca9d9775e1f1f4321531b381c08e7608646`
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
# Mon, 26 Oct 2026 23:43:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:43:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa216dd811a83317829abca247267f0a587968dd8620982c7e176b1fb85c983`  
		Last Modified: Mon, 26 Oct 2026 23:44:12 GMT  
		Size: 59.9 MB (59935940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:27da00bf0773eac3a1a86ba45584828cf372f396a0363c94389310b73e46988f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2702f1db6b9d58a92485cc764b943e875a0773339fba979aac34f27b22923892`

```dockerfile
```

-	Layers:
	-	`sha256:fe19b1ee4da4e2a9d13d49af19ff88bb725d72f8dc67270f242b326604c71465`  
		Last Modified: Mon, 26 Oct 2026 23:44:11 GMT  
		Size: 2.5 MB (2528521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bdd0d70d15284de1332b039199d86861bba2cf0f7b4a35a638d1ad908f4f0fb`  
		Last Modified: Mon, 26 Oct 2026 23:44:10 GMT  
		Size: 12.0 KB (11989 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0bbea8190f3077a3afc5416aef8f0de3faca166067ebf175867ead303b79c3d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93729699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcf1b881670d069bd8ba947281f6b48695a830aad9445b7e377f6a5a0fca5d3`
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
# Fri, 23 Oct 2026 18:57:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:57:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 18:57:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1b96d337f9761fcb321cb32f206cdb09c6ff07eb867540f7e2acb1fedfedde`  
		Last Modified: Fri, 23 Oct 2026 18:58:32 GMT  
		Size: 59.4 MB (59351709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4dcc263f0f13e186779c8edd1c1174c8cadd8ebba202dce1064b32fb8707dee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2bc3da58c48f0573bbe18af620e6b92639b3223d5bbe2051f383564f3fd2ce`

```dockerfile
```

-	Layers:
	-	`sha256:2886511e153fe032acd789d3dd47ce102921f50b0775ca32aef6bfcacd71266d`  
		Last Modified: Fri, 23 Oct 2026 18:58:30 GMT  
		Size: 2.5 MB (2526846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc26ca7e55ba4d2d30c2a8a7fad1a3f692a5f5d684e36c502a80d61eefdc6a5f`  
		Last Modified: Fri, 23 Oct 2026 18:58:30 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.in-toto+json
