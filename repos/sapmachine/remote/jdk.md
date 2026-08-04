## `sapmachine:jdk`

```console
$ docker pull sapmachine@sha256:10f888677f4285a8a6f9a159a76693068f8ac508647a38dfe1b40fe5f97a1eea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:d628d30fffaafb2325c1fc0064429f32a71406c98a3b1467d9347e32bf79007c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173410690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7be7ddc030cd99eff5c30c4168c04af1b13e4698fa3e900c2d81d21dc491687`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ad2c4f0387f1436e571d224ce44c10bbb1dcb151b5d27710b812e053feb824`  
		Last Modified: Tue, 04 Aug 2026 01:48:27 GMT  
		Size: 143.7 MB (143659581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:752627a7764d6d6238acba594ac89a6f65b4c53e97d4d32e75614ab0437fb293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec0be6235fa1c8ee5f21510865208e41d889af14832ebac02a6f9da457f064e`

```dockerfile
```

-	Layers:
	-	`sha256:6b13e4c7e0862678d02be75b7e74dad4b0f48e4f0f0e250459dd57e697a91414`  
		Last Modified: Tue, 04 Aug 2026 01:48:24 GMT  
		Size: 2.6 MB (2553312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:892b1da14a9f18c488183d306510475ba1c94ea7680629fb04ad31322581d129`  
		Last Modified: Tue, 04 Aug 2026 01:48:24 GMT  
		Size: 15.1 KB (15100 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6246d83eb8e12c3ec0916747807b5fd9a2edabf04c606b8940540e7175a99b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169186264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2802c0a873bc69224ce39eb7efefe543de8f2a051cedae33d32dcff54238adf3`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 01:48:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9d6a2381a3fea5888b2e004a5d98cf71d29312b5c16cab029150e7b6620c27`  
		Last Modified: Tue, 04 Aug 2026 01:48:40 GMT  
		Size: 140.3 MB (140299446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a954ffedd86f00f23b7bc7cd3eca1cf54034d4b4cd4b02aa00e31ab1cb2bac7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b58e81b8ec90a06f22c9421c8b5451504648c8e887aa3dc6e2b406a2435a4a`

```dockerfile
```

-	Layers:
	-	`sha256:5a9e8c2a31b4977ff60b04f45d91cfbd08a5b306e740a2fb3833cede9d6530e4`  
		Last Modified: Tue, 04 Aug 2026 01:48:37 GMT  
		Size: 2.6 MB (2554017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7663ea6158b47889f41eb4326ca32401378e3197b87e2f8a7f103676e47a2441`  
		Last Modified: Tue, 04 Aug 2026 01:48:37 GMT  
		Size: 15.4 KB (15444 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:06ab9bcc0fac865f58019798ef6115094b1797a622bd9dd88306bff98a8a372b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174688980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b597d3678cc82ea7540c4a24178b122c6182861281c564172e68621fb33468`
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
# Wed, 22 Jul 2026 18:21:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadc79b708fb85c165ff1e051cd5a08bd791507ec3a4ea0c28045f6216f9b88c`  
		Last Modified: Wed, 22 Jul 2026 18:22:26 GMT  
		Size: 140.4 MB (140375504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:45421c24534c1d2939ceeb3b58a86d1e8e7deb506db70791b7d2486224384a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8866e9fd222dbd29c4763cab39980dd1f8e975fafd96807b515234452f019fe`

```dockerfile
```

-	Layers:
	-	`sha256:b2ba0ceda835040a2e97c4d4ee25fe0b7c7283c12a02bcdd6583d58ef10ba548`  
		Last Modified: Wed, 22 Jul 2026 18:22:23 GMT  
		Size: 2.6 MB (2552250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7872f1edc6175115c75def03e9ae8b40849115bd52d05fffbd7e278451d9f9b0`  
		Last Modified: Wed, 22 Jul 2026 18:22:23 GMT  
		Size: 15.3 KB (15264 bytes)  
		MIME: application/vnd.in-toto+json
