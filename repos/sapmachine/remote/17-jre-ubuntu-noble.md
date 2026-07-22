## `sapmachine:17-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:7df3a6868421f268bcbf347b6cfa4a5b4c8624e78489410bd4a008b0128b65b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:c6c6c6176b9f156c68905a6d90dddc180117a7e88571f0dd567e99f3dd6abcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87731447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f9d9a4bb251606f6711556ee21c93d9fc3541d18064fe8b666a66e081efd3f7`
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
# Wed, 22 Jul 2026 18:25:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:25:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3704a8930f4ae30e3bbfb6ac566179a26050bf1fa101235b99abd11055830`  
		Last Modified: Wed, 22 Jul 2026 18:25:59 GMT  
		Size: 58.0 MB (57995846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5747a3e885753c73c7f1b015d4337b9cfbf7ae94495b512d5d466e0765609b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6046cbf825a8702e277bcf178a08b5db13aaed8259c3fd3c4179f1ae139c2`

```dockerfile
```

-	Layers:
	-	`sha256:c0bd827428788ef7eee8a02205d337f68972445702a93804b8cf7a26784e5d64`  
		Last Modified: Wed, 22 Jul 2026 18:25:57 GMT  
		Size: 2.5 MB (2520716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9d5ba70c479aeea9860644e8fda86bb88df2ccbcbdb76207b406b7337d5da77`  
		Last Modified: Wed, 22 Jul 2026 18:25:57 GMT  
		Size: 10.0 KB (10046 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:56811d361756f5d0b28333fb5b8105e03430857a143d47b7cd8bebed839622ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86353836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb24cd01bb9256793847496113a3c2a0fddd698f16c07ada6ec7cdc6fed60a2`
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
# Wed, 22 Jul 2026 18:23:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:23:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6c32e28c649fa5acba690a830015190416193577e746739bad739e20fe71eb`  
		Last Modified: Wed, 22 Jul 2026 18:23:33 GMT  
		Size: 57.5 MB (57469656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b00851922cf3d1737366e240aab6036244a5625d5581b4477eee27184355ed5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00e06af2fdf43ae2ed2eb726e83759054b826a71b4c8e117be3416353a2a192`

```dockerfile
```

-	Layers:
	-	`sha256:71cbcb182b4a74d7c828e7d1637e2286443c495a5ea7a811d0c4807356a27f8c`  
		Last Modified: Wed, 22 Jul 2026 18:23:31 GMT  
		Size: 2.5 MB (2521232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecec510a124e6ef638ed63777cc84129e150d5dac073deed961a1ac26a08f7ae`  
		Last Modified: Wed, 22 Jul 2026 18:23:31 GMT  
		Size: 10.2 KB (10198 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:92d69f2b3d3250653064cc3d4e364801bcb5c452cf5b215966f6e630acf3d21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91840705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2919329130185b1f4c9f8c7bd9dbe734b68e16bbe993d47dc224d4bdfad6e4b1`
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
# Wed, 22 Jul 2026 18:38:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:38:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:38:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f96621f0a22080c8ad9310abbaf1d65d73e80be4aadd87d11cc9f9fa721c49e`  
		Last Modified: Wed, 22 Jul 2026 18:38:42 GMT  
		Size: 57.5 MB (57527229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e93419f73182adc1d07fe008575bdfc788b0a8829a71d156f4b2df51fbc97a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f8dedd7b1b1cef7ea3bb03fa560cf0959db39ac84fc89fd4cfa2a09e2c176b`

```dockerfile
```

-	Layers:
	-	`sha256:f13c7ef65718141e2c6a4c6aeda4a2c2870e038a17411b1322aac9895342f4f1`  
		Last Modified: Wed, 22 Jul 2026 18:38:40 GMT  
		Size: 2.5 MB (2520214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:544a6aa15c62bf63a32aabec4cc0d5528e1a09680da7e20abc2c9d40e734728a`  
		Last Modified: Wed, 22 Jul 2026 18:38:40 GMT  
		Size: 10.1 KB (10114 bytes)  
		MIME: application/vnd.in-toto+json
