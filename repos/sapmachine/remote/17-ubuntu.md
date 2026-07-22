## `sapmachine:17-ubuntu`

```console
$ docker pull sapmachine@sha256:1cb2a206a86793cabc0199d87e6b27d73f31c9bab089f6b34c88168d4961a104
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:54fea0b38eee58193e67ecef74b657c120bcf30bebc053a4d5f6b6604db30dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234879008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b1b96f3e0367eb9fcfd692e4915c2d5ecc27f9c1a000ae77af69b2d7ea6d15`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:25:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:25:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2e897739f39a07ee6257408a4110244836fca4f73132e016d4cebc94995669`  
		Last Modified: Wed, 22 Jul 2026 18:26:21 GMT  
		Size: 205.1 MB (205143407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e952ca2f5f01b4e38608c6f18437b537784661cf6653d549c1a913dfb04d5f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422233145b04b49871e2cd6202e46b241645e896c4ee4ba59c62c52f19f8df91`

```dockerfile
```

-	Layers:
	-	`sha256:5f6d27a18399ef5685cb414adc3a73e6e15e11b1c73f61cd816e94c56c8181ee`  
		Last Modified: Wed, 22 Jul 2026 18:26:16 GMT  
		Size: 2.6 MB (2606180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf65f752afb811d6e3efd0e4b790be740a366319e123c841c8736c55f5d2e094`  
		Last Modified: Wed, 22 Jul 2026 18:26:16 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:605bf644d4ff57af711138956f7d4232355e580704eeb8ef8ed2f20f07a15fc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232804414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d818e6b6354c8a4b645cf435414a011d033c55c51d04a0f323a6d4865655ec`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:23:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:23:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68ebaa7e6a00f06e0478c85c5febcfec16a195223a7bf76a71218fb2bc3938f`  
		Last Modified: Wed, 22 Jul 2026 18:24:02 GMT  
		Size: 203.9 MB (203920234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8fd5c5403ec491f7e292e4a9e6748e87f45711dbeaf80bb3ceaaae765c003af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a37223cdfbf705e9cd2e54219e2a433dc01844aa70d6e7abf0e520abd5dc68`

```dockerfile
```

-	Layers:
	-	`sha256:7c61e59c664d6f8f8524cad18b116793591fd2692492edfa45775ab6810387c9`  
		Last Modified: Wed, 22 Jul 2026 18:23:58 GMT  
		Size: 2.6 MB (2606792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4713783466186e62898a5571c5649fed97f0923dd8c433c6e7fcade39db77fa`  
		Last Modified: Wed, 22 Jul 2026 18:23:57 GMT  
		Size: 12.9 KB (12855 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:260fd820bf89e55076325149cae9db1b40ce0a5f073733d7f5fb202fcba08f2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238610904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4697070a62ea3a169ff68102a7f8f8e9ae02fbac8bffed5c78d49f3d6afe0ec`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:39:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:39:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:39:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94e63820bb5ee03bb67355f4d59414ecd3231c05bedf5d71401346b9df7e9cb`  
		Last Modified: Wed, 22 Jul 2026 18:40:15 GMT  
		Size: 204.3 MB (204297428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e0e8e6b31b4b586482ab17a473227e8d98c8f6bfefed4799a4e1d499abce808b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26956b8b7b456155d1691b9e068ac4ac6d1fb66cdba9eff947267f1b88782cf`

```dockerfile
```

-	Layers:
	-	`sha256:e8496e8d073ee432ae56a848b1ae8f60eb1eadc8eed7e5cf5227e447b2da461b`  
		Last Modified: Wed, 22 Jul 2026 18:40:11 GMT  
		Size: 2.6 MB (2603780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83d8516a6b4749e5d6a735d5146b55ae130435f1a3d736f60cfbe1c7d69400c9`  
		Last Modified: Wed, 22 Jul 2026 18:40:10 GMT  
		Size: 12.7 KB (12722 bytes)  
		MIME: application/vnd.in-toto+json
