## `sapmachine:jre-headless`

```console
$ docker pull sapmachine@sha256:78e9eee41f9e55b9966900a906214e393ba26ff359b0842deb8c0e85e60050fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:2b0fdab17841546bf155c6ea758ca1de91c21483a4ec3a510e4c33000a8f94cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (90035953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370739bf347fc16f1e635c85348aba6686e66ff740ac84337931e7e66a340e24`
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
# Wed, 22 Jul 2026 18:21:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4583965569372807e09e86da343b7278bfad05b0019c836388e69f39693212`  
		Last Modified: Wed, 22 Jul 2026 18:21:27 GMT  
		Size: 60.3 MB (60300352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:831a0fa7570eb766e9c43a7e887405619237db0aedb5bdfea9d418e98b815ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390369bec39d0d59a88758a777397e3b161a889ff14643e10c85d4c99af30716`

```dockerfile
```

-	Layers:
	-	`sha256:9bb1d5966f2d9e75c9017b9484aec7831d938153c302d4be61ab18a8117f46dc`  
		Last Modified: Wed, 22 Jul 2026 18:21:25 GMT  
		Size: 2.3 MB (2279218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc91d2eb7836bd5b15b9957d63af925a629a76b366f987684890ddbe88877aea`  
		Last Modified: Wed, 22 Jul 2026 18:21:25 GMT  
		Size: 11.6 KB (11558 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:afca5b995c6034ec7c8813d61c027573217b3636260ebb645833010319ebed68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88197297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9464a2e2c2622ecc22d1a983522efbfe5b3679978bc82ac1ec28376107ea2`
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
# Wed, 22 Jul 2026 18:21:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b262a60756b6460101a6f6597188b2c097674596049adf107acc646a96ab2a`  
		Last Modified: Wed, 22 Jul 2026 18:21:49 GMT  
		Size: 59.3 MB (59313117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e19b156d079ffe417f2e1200929f26a67579ab41e712c49eb168e8defa04cb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e26a4cc6b31ffc6a6b96966c3a2e496febe5be8ac54acda5ff5177e03a20722`

```dockerfile
```

-	Layers:
	-	`sha256:5f3715e04fd17b304e63e7fc03bc8bb040db453ebdbaa5b429058851570ad934`  
		Last Modified: Wed, 22 Jul 2026 18:21:47 GMT  
		Size: 2.3 MB (2279770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efb24fd21609bd011b8a5ad3e33f92a887bd850c1b0fef50a650eb046ba31d5c`  
		Last Modified: Wed, 22 Jul 2026 18:21:46 GMT  
		Size: 11.8 KB (11758 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a24a5eb2ec35984a8cf41b08e724849d8524af0bf6a1c0fbcca0b65564fc43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94003903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c5e44a3a6c3d8ebe226214609f8cd19a380a48e226c6789225e4cdef0aabcb`
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
# Wed, 22 Jul 2026 18:20:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:20:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:20:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac830cf73f128435497afb89c2e0827260c5ed035bd8208d48f5e21a7771f6ec`  
		Last Modified: Wed, 22 Jul 2026 18:20:56 GMT  
		Size: 59.7 MB (59690427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4f5f44bd577617484cafc2a1a6fb2227404ad776ea8fa7fa766ebf19bee1e4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2289679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70ff7397e9a7c4420f71bdc182a50a7386580b223b8584e84c8897b519e9025`

```dockerfile
```

-	Layers:
	-	`sha256:97610061052ad44d48b290244ba4b5b2ce508d3b867bd9f1a2e46360f66994d3`  
		Last Modified: Wed, 22 Jul 2026 18:20:54 GMT  
		Size: 2.3 MB (2278029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27f0385371d279f4269bc0bf83bda15a0b12c8145ec2e1b2c383331461b031b9`  
		Last Modified: Wed, 22 Jul 2026 18:20:54 GMT  
		Size: 11.7 KB (11650 bytes)  
		MIME: application/vnd.in-toto+json
