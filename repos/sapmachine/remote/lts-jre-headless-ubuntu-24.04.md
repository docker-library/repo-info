## `sapmachine:lts-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:92d2b246a14342387472d4540f5e773d8bd0519a7430ea0c0aa88ab128913bb6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-24.04` - linux; amd64

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

### `sapmachine:lts-jre-headless-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:lts-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

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

### `sapmachine:lts-jre-headless-ubuntu-24.04` - unknown; unknown

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

### `sapmachine:lts-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:116b122dc6ba9d9cffa1c10e3dc1a78f5f766c8c5f64def565d73f8ea778c656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92663606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b91252a9ae2aba600276ea5072b102bb063f73518827ecfcf8baaf22f90bad`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:35:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:35:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 19 Aug 2026 22:35:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788b97032618113907f7c43130bb70789d2558d54fc1a71ad82c705e819cca7c`  
		Last Modified: Wed, 19 Aug 2026 22:36:22 GMT  
		Size: 58.4 MB (58352411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b5e74d7187722daee18d330eb3daf91aa55dfa31b2069e302dd95e226b80cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c49a40eb77b6c26297fe92b2efeef374bb4187daa66bc519f72bba5f11a56ac`

```dockerfile
```

-	Layers:
	-	`sha256:ca5412b28aece88a2c8b61fd627cf5639a0c20dc2faf29994885c5bff7e7c6a0`  
		Last Modified: Wed, 19 Aug 2026 22:36:20 GMT  
		Size: 2.3 MB (2279653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52869aec137c4b303cc397d656ec9765941b8acd195e6c7e026f7e82bdfee4dc`  
		Last Modified: Wed, 19 Aug 2026 22:36:20 GMT  
		Size: 11.3 KB (11350 bytes)  
		MIME: application/vnd.in-toto+json
