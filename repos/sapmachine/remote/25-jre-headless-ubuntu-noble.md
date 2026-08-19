## `sapmachine:25-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:69d710fd0a67b55229779c1e6e0a739b5dd5a55fc32675e213fba0b0e320b316
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:11e4e0468b94e8e3890f9fc677c5227a42e1923afc871f0e2a102ec8e2ee7680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89059797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133eac909c39a5e39c0145bca07bf14bbd36a8a1ffc4322067aaeb2524d13c8d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:28:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3394b712f8a6df53f0995e6d922574ddc1f2eb26a037d65704a223bc994bd956`  
		Last Modified: Tue, 18 Aug 2026 19:28:48 GMT  
		Size: 59.3 MB (59306990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0d0e1863d8486ca48fe837e89a14dbaaaf2955c3215381746579152b7f583545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26aeabb49486191ab929865f6d72bd019ba21b1a0628b08e6cb85c19770689f5`

```dockerfile
```

-	Layers:
	-	`sha256:e342420ddec16356276c1254283cf83f0c8dcdae74a22b7403b42c1a8dadfc82`  
		Last Modified: Tue, 18 Aug 2026 19:28:46 GMT  
		Size: 2.3 MB (2280848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a43019433d1635a409ed82c666cf0bdc10b20ab3db97a585e7aa8c1576606a8c`  
		Last Modified: Tue, 18 Aug 2026 19:28:46 GMT  
		Size: 11.3 KB (11263 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e4639712683d9d5f4e4e79300f557ba8a6dc3a976604df95383a72c549831469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87147102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a08af0b53ff55137867cf647c9d5d24f07ce499902b5d270428e4a9b5dce763`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 19:28:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9e2be894b7385d4b71b7a46fa4574d7316567d7c65d99ed3cb7b8d53df01f8`  
		Last Modified: Tue, 18 Aug 2026 19:28:59 GMT  
		Size: 58.3 MB (58259867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:97ef36a675590941b145f19bb5c9904ac6f5e10539ab2184ee789ca0589a6d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287df43a2ebb7df6da02ac7cf7299158e380c4c58cebd087f1d86ffafa330ed0`

```dockerfile
```

-	Layers:
	-	`sha256:d12eae67b4792f832c05d249f70b2aa06039db5cdce5c3a69fa7c3e6838022c8`  
		Last Modified: Tue, 18 Aug 2026 19:28:57 GMT  
		Size: 2.3 MB (2281388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da3f35421c1cd13c649c95e529df1498be875373b0576ba477acb84b1dae65f1`  
		Last Modified: Tue, 18 Aug 2026 19:28:57 GMT  
		Size: 11.5 KB (11452 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:15234f24592cf3a3274b847bed6c9cc497140687d7ebde321cab588b7f604a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95286820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ca09d5885a8a39150b32bcee1ecb8fd1c5cb6d00555b04ed25336562994308`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:45:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:45:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:45:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f101b4460df7a3aa89367be0e07bda7688a6b1c34b755addc4b65de931e92a`  
		Last Modified: Tue, 04 Aug 2026 02:46:28 GMT  
		Size: 61.0 MB (60976147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0e7164a1f1ba2263056e212407429518bba5297b68a263b37d470ec8f5efbd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c28834b861b725580a4d67339d140375025faea0734f0d12e733bf874cc90b`

```dockerfile
```

-	Layers:
	-	`sha256:a285db92d290c58b2086032e80d27fde4308b74c464a46f55d95d8ceb4f7f128`  
		Last Modified: Tue, 04 Aug 2026 02:46:27 GMT  
		Size: 2.3 MB (2279653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fda00a270501fd8458c9d126a8f1c55ef57355540795dea4977d756ba0fd79c7`  
		Last Modified: Tue, 04 Aug 2026 02:46:26 GMT  
		Size: 11.3 KB (11349 bytes)  
		MIME: application/vnd.in-toto+json
