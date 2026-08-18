## `sapmachine:17-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:30c1fe281fb73a74ab3793595d62062a0d96fc9dca05476755326025d39185c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:956e5f715b82bffe88be8036ac18eaa13e1d28365f533576c191ac503835b259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85705585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6257c4eaa2ee459bf2169d70f041230656c1fde43c4b6b9bb47cdea868b49577`
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
# Tue, 18 Aug 2026 01:21:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:21:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 01:21:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d047021e9e0b470497df2f59c2447fc8141b8ca9e95e837a9ff5f90347a48f`  
		Last Modified: Tue, 18 Aug 2026 01:21:19 GMT  
		Size: 56.0 MB (55968642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:78165190043849749b11c360be3e54ae97244db858b7d68b3024024cef574db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab375c38c1c61dcc0c9bc72d2aaa88a6ab621d4de3440a4829d517edc23ecc76`

```dockerfile
```

-	Layers:
	-	`sha256:a8ea317090dec43d47f7118c93822219a5dc029dd81dbac84d57fc33b6a1eee0`  
		Last Modified: Tue, 18 Aug 2026 01:21:17 GMT  
		Size: 2.3 MB (2294885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f0259a73629594fb3787b0440f8c2a6388b66489b287bd188854b22817255b`  
		Last Modified: Tue, 18 Aug 2026 01:21:17 GMT  
		Size: 8.9 KB (8885 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:650660860ba0e9c8c2ae19a3ca627395a3bc1529f65d7a12a2f7b6219009d6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83030994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61743cdfe77c137a8b543dadd33ae0b0d2ec7eb0538d9bbd90202e7efe9eaf44`
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
# Tue, 18 Aug 2026 01:20:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 01:20:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5cd6a752b7aa13c59e882a8da7098773937b962117124010ad4b0367b06b01c`  
		Last Modified: Tue, 18 Aug 2026 01:21:00 GMT  
		Size: 55.4 MB (55410541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e18cbb31d96e0b296f809b5e2d378c8f2458ecebaaf48097c5fba9b3775ddafe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12fd838ca0d61325d894a19bbf75464efa1c6afdce75fd6e7adea0899948763`

```dockerfile
```

-	Layers:
	-	`sha256:4ab7fd32deca2c6e151bf78303d5f0c5a46dfce0abb66e64341af682f6074440`  
		Last Modified: Tue, 18 Aug 2026 01:20:59 GMT  
		Size: 2.3 MB (2294557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dd8a0c50b5f4590afa40eee64db48fe9b56d8a78c3f181288c655634136c59c`  
		Last Modified: Tue, 18 Aug 2026 01:20:59 GMT  
		Size: 9.0 KB (8989 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:577dca4f2cfeb2d2e66bdd14e7345083d84888a58ee20249a4752f54808170b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89809668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecccb42d3c2b0f121f3b6db519563a1cac0242af68be056a5c94ea982b99361f`
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
# Tue, 18 Aug 2026 01:41:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:41:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 01:41:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aec6dc64769e4ec1575d791ac99ebdf75471b0b522574eb7ef0f62c253461a1`  
		Last Modified: Tue, 18 Aug 2026 01:42:11 GMT  
		Size: 55.2 MB (55171523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b0814e95bf26a827c3df6c978d98b337286d7963375d977fd90f3a2c4313d24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dca3195a2ee13de36ceef78fc37d53aac4a61024613a6d1b560856074fe4d90`

```dockerfile
```

-	Layers:
	-	`sha256:151be3f2c11edf2c618da67c5270018f885de265018e90bb900b4d08ce5e0da8`  
		Last Modified: Tue, 18 Aug 2026 01:42:10 GMT  
		Size: 2.3 MB (2294327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:035579f68fdd86bf383616f33b41a18789fa378ed65f996ba60308010531b137`  
		Last Modified: Tue, 18 Aug 2026 01:42:09 GMT  
		Size: 8.9 KB (8929 bytes)  
		MIME: application/vnd.in-toto+json
