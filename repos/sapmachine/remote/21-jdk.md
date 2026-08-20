## `sapmachine:21-jdk`

```console
$ docker pull sapmachine@sha256:a3b067106339a497fce00d048edfda5636cc0acb35e5ac53dca900dafbceb008
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:86e0bde0f481a49e1de0a532655e47cd331dbbd88481921f1d1e41f2deaf14b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249776297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e46a663d49414d3a0c626720feca49da0b9c0e9a76ce1dc4b155f9b9c88277b`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:06:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:06:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:06:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b7736d0a34796dee0f3ee65839eeeed8026cab9469b66eca20a82068878207`  
		Last Modified: Thu, 20 Aug 2026 18:07:21 GMT  
		Size: 220.0 MB (220023490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:61a27198f322ff6eecfd609c0a3a1770137b47b76c983cd50bfff938f3143082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd2e29de27d4d34e867a21ac880e4d9d981fbd73cf597565bfbf53b80b11b0a`

```dockerfile
```

-	Layers:
	-	`sha256:2cb2d55bc7594549faba335fae54d64facc7a00d288421438e536845e7032f73`  
		Last Modified: Thu, 20 Aug 2026 18:07:16 GMT  
		Size: 2.6 MB (2607865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b8512c104bc763aeaa88ad37f3d20beae82e369ff4a532cd688cd422849a26e`  
		Last Modified: Thu, 20 Aug 2026 18:07:16 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8dabf48596fb4885d6a5904db69ff45d6c50acf751d5936d6d939ae22d20b6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247118135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8f6d4304b4fd389d789606be5b43264ac912200027e88ee72662fd83cc13d6`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:03:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:03:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be67d4f31f1e1b50e58b8956171d8abea904c297369e93dcc4dcc97fd484a601`  
		Last Modified: Thu, 20 Aug 2026 18:04:23 GMT  
		Size: 218.2 MB (218230900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bb6bcd18217f5f314719dd1e3b3de3cb3f35d95273e94da67ec0796cef5a0641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:593b2ec1336c02f25f1662f9ed7da093e905e9f96347a7daf7c83b31e2b4ea16`

```dockerfile
```

-	Layers:
	-	`sha256:7935513d16163b3e671a3e5cc475d721733673e01ddf9b85d9c88b4a3ceee4dd`  
		Last Modified: Thu, 20 Aug 2026 18:04:17 GMT  
		Size: 2.6 MB (2608477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc3a00352ca0b27fb1e73633f58757c5c78a2f7fd01fbb528a43c9d09c3c7183`  
		Last Modified: Thu, 20 Aug 2026 18:04:16 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:01d777df9a908edcf00e7ae4697d09c8a234dee185e1a5370f400182724d1431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254318966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4141ff6121da342dd779a9571cd610d532c284a990991df37fabb14e6ed2e54b`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:11:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:11:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:11:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59687a92551178b7f4e61d28f1d47a75884779f2e40e48be7ad89ae9481cf631`  
		Last Modified: Thu, 20 Aug 2026 18:12:41 GMT  
		Size: 220.0 MB (220007771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:83e243cf832eafcdaefcbcfe8eefc1b02a4043ecc819802bc60531b720e1d187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ef370b83eec65f29cb3a4fc7e9c1fa7fcfc939f85c3b5b1488be91830a8922`

```dockerfile
```

-	Layers:
	-	`sha256:43d353bfbf6642553f1ccbbc56611f5f70e39e48bc403d557c4dbc58b2951fe0`  
		Last Modified: Thu, 20 Aug 2026 18:12:36 GMT  
		Size: 2.6 MB (2605465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:163451c3ad58806871799b6ace3a1efdca4de884b1e7069292bc0f0eb6d2f1a5`  
		Last Modified: Thu, 20 Aug 2026 18:12:36 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
