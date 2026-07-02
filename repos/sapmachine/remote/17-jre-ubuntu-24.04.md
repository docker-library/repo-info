## `sapmachine:17-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:866998b6b5e325ea9e1ee9952f4bc4639f9e2fbb75036112a3886e82623c5003
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:946d8c0e14f959ab7a8679a42a3523f0fb3071c3a7a19c69d09c062fb0340df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84668623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30722b42fcc5f9d459f940fd2ba501580cab5aabac3277803e7b0b9a86c42201`
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
# Thu, 02 Jul 2026 02:38:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:38:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8103492eaedb74c46b62cd9a914238248207d7d9f5488e7c154fdf509f12fbe5`  
		Last Modified: Thu, 02 Jul 2026 02:38:41 GMT  
		Size: 54.9 MB (54933022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:83ebfc9c3ecce91ca425a6559c833878026b3132ba163a34984c6fe4680631ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4693b6372c008ac70a6ee75762605d955d6faf62381ae36b67c941a5db4e26f0`

```dockerfile
```

-	Layers:
	-	`sha256:57b406c44a74f485d25bd3793387a7fe39096f1e7f1a1fb749e231c929102540`  
		Last Modified: Thu, 02 Jul 2026 02:38:40 GMT  
		Size: 2.5 MB (2520723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6268b9532350f8c869f0294a34b396329f5d39a6e7f2abd4b2579c11bf674b50`  
		Last Modified: Thu, 02 Jul 2026 02:38:39 GMT  
		Size: 10.0 KB (10046 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:87fe53d1fdf317b236c0e26744f72fc5c6c45454866b6ca191f0dc81edab4920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83254763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6975c4b0b7c8171ce526f659ecdc1a6582fb064cc321394440dab7eb1da71dae`
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
# Thu, 02 Jul 2026 02:37:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:37:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec7d25ed077240470d35c6b70351347108c02fa9bbc8c4928486633e782c33a`  
		Last Modified: Thu, 02 Jul 2026 02:37:54 GMT  
		Size: 54.4 MB (54370583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8004e7ccc24dd80a03a03e88c109c3ae2dbf21c21fc6aa47886b927171de3497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc650e56870c6f3d9fc711b695ed3e413a050f51cfd47b6803572e04bfe7c020`

```dockerfile
```

-	Layers:
	-	`sha256:29f2b989b50bae82287305a2a31e5669ec245255e34ae78027d6b9d28a90f723`  
		Last Modified: Thu, 02 Jul 2026 02:37:52 GMT  
		Size: 2.5 MB (2521239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98a2a0611b8f2f6d7b3bde94fb3405af71a7421b351115bd0787c28adf691b87`  
		Last Modified: Thu, 02 Jul 2026 02:37:52 GMT  
		Size: 10.2 KB (10198 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:00f6fd8b7f2a91efa6299726d4feadb76b8092a4ed19766502a9e25d1286d851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90539255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cb76bee31b987f5f1615168d53aa4ab56ab85a4d9bb0d396964c67dcb4a138`
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
# Thu, 02 Jul 2026 03:43:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 03:43:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a1cf1e89322a52dfdc20ec46c1142b634de054cc8e5905f106cc1f476e7821`  
		Last Modified: Thu, 02 Jul 2026 03:44:20 GMT  
		Size: 56.2 MB (56225779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4c0e38eac32348f6d71e92c7ba239077fee6b8a53f4713e248223276c77a7c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0a38b15a1c0fd4e2f3de543b9248dae3ee614739182afe5040c4f304a6d14e`

```dockerfile
```

-	Layers:
	-	`sha256:79719f20f4d7fbf6b42acd59a82174123759c6b35d062115e739045bfff6b819`  
		Last Modified: Thu, 02 Jul 2026 03:44:19 GMT  
		Size: 2.5 MB (2520221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6851dc78d8278a8129bc86028489d73906229e9509818aa45175cde0f35cfa7`  
		Last Modified: Thu, 02 Jul 2026 03:44:18 GMT  
		Size: 10.1 KB (10114 bytes)  
		MIME: application/vnd.in-toto+json
