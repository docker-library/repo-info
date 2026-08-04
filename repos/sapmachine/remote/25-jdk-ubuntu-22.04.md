## `sapmachine:25-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:9f803cea0ac9f77b192ee2539d4fc7333b9dc6ef38081185a701969cb6b67f50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:b5c7650f3d408a5573f658fdc94f165b00129edf1a7454a1735d47b9a67a7e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254381746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9490ced92d2ef451ab2150d662f5e09934ec59bdc541b312b2ef520c933038`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e881d04d3fc0f127a065f06a4f6bcf4986d41719e2c79a89e86d7af561ee51b6`  
		Last Modified: Tue, 04 Aug 2026 01:49:58 GMT  
		Size: 224.6 MB (224645229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7bd18acf1af91df9a63208dcbe233d92b92880f21175dce9510f3e0953845881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6618808652cc74cc510cd13708b68a102ad62a130e2483d2bba7eee480df2974`

```dockerfile
```

-	Layers:
	-	`sha256:4d6427acbd25699b022a68fd22a1a84347125b4cddbf47705a87acbad3ed99b8`  
		Last Modified: Tue, 04 Aug 2026 01:49:53 GMT  
		Size: 2.6 MB (2623534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba47a6f75b8189bc179292f26b8cca4a1c5f491e7c168b86de56c473eec2592a`  
		Last Modified: Tue, 04 Aug 2026 01:49:53 GMT  
		Size: 11.4 KB (11402 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:56656fbf5bc573063748526011fe2ca63793368dcd9da62bdf869277e8913cc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (250009008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ead697ba6220d0c9619298ea99f8a036d2752c09a06e754de31139986dcd4c1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8373577a25135c84addefb13bfa090b703451aef9b33ade4bb229f558f1cd360`  
		Last Modified: Tue, 04 Aug 2026 01:50:01 GMT  
		Size: 222.4 MB (222388976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:22284bf1d40848e9fa7eb5e268b539088a39b9fdf366a1f925f21f5f26a1aff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047913fd43749842066e6ad23f76f467b7987123b5215a91d1239244c8cfa401`

```dockerfile
```

-	Layers:
	-	`sha256:262d84f8d803e18a23c62c53dfd23da463e3ce51d8140a30787f66a07b4f8346`  
		Last Modified: Tue, 04 Aug 2026 01:49:56 GMT  
		Size: 2.6 MB (2623309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b913455a0009ef76cdd83ba465936e1bfa3526fc951b58acc3eb086fa8fe75e`  
		Last Modified: Tue, 04 Aug 2026 01:49:56 GMT  
		Size: 11.6 KB (11602 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3b1daad09f7561471058bfba7486b91e01615ddcae02a3e06b168a6a70a0f494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257465906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8527766c3961ba72aa847275217ec841676a15643374a536e2f381b97f14bf`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:51:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:51:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:51:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6557e370f67ed3b193e9b712911868af26ba977156b31f041f7844899d59e076`  
		Last Modified: Tue, 04 Aug 2026 02:52:28 GMT  
		Size: 222.8 MB (222828240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4437706507d56034d7fb36c8463477b5ca0f2d614b59c25dbb200c2fbecbfb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0705c2b5c9f3d3575da96654b0d9e0dfff82f758c552121fd9855ca789033fc`

```dockerfile
```

-	Layers:
	-	`sha256:eeeb4b46040598ffad698d0647e45169ce211cee0c31d3e93bd89df8cce394f6`  
		Last Modified: Tue, 04 Aug 2026 02:52:23 GMT  
		Size: 2.6 MB (2620550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4248ceb6158b2d3601dc4e145de4ec48f67ce1f9d297e58793719a30d27508af`  
		Last Modified: Tue, 04 Aug 2026 02:52:23 GMT  
		Size: 11.5 KB (11494 bytes)  
		MIME: application/vnd.in-toto+json
