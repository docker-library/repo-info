## `sapmachine:26-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:209d21d2b578b29b1c10c0ae015e0b64fe6357ad840c73d770ada79266973fc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:d6a0fac0183665b425cb547156b107f42019fc3161bc7788d05097e28a5b28c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91557635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7b7b0576829dad226ea8f2e3e26c4646bffc0865773b4fd7da52b38d3e9fae`
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
# Tue, 18 Aug 2026 19:27:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:27:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72f296fadc78bf9663f420ab961d3d4d985b8c015abf2f2b9089c02750e0546`  
		Last Modified: Tue, 18 Aug 2026 19:27:48 GMT  
		Size: 61.8 MB (61804828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:90c376707a1bed0790a7d3651776aafe49619d8c8c445b7c9842166261310f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205c89fe75c355d99f64145f4b61d671e39247439df9eecc5baaed41a0a59dcb`

```dockerfile
```

-	Layers:
	-	`sha256:a78f8e1faa041c46ef89fcbc191c25d1033409d7b30b5bc222d54d9318e7b5ad`  
		Last Modified: Tue, 18 Aug 2026 19:27:47 GMT  
		Size: 2.5 MB (2526240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:952aebb1d4525d14c198e084184251d3d583af785724cc8cc7d88e35ca1cb4d9`  
		Last Modified: Tue, 18 Aug 2026 19:27:46 GMT  
		Size: 11.3 KB (11303 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a928d6d588e13cab67fac2aa91dd6ff643875ee3ba28653fa4b8b9867fcf83ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89705978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6083da8a1def01f62b25f4ce52edc3e5e20876192f851e61c32c776182a0d027`
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
# Tue, 18 Aug 2026 19:27:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:27:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:27:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304438b09a23429b28a481c0b32d86213487a6953f56b9e5e6dad60f081caa64`  
		Last Modified: Tue, 18 Aug 2026 19:28:03 GMT  
		Size: 60.8 MB (60818743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:980fbf1b97c1abaf82865fd742bc1974c0b02f70611cf7c08ad7c2e8148aa0a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c623b97192a39adc0026e884ef12e151150ba91289c699f349885f98f6bf9b45`

```dockerfile
```

-	Layers:
	-	`sha256:8e5c7727fdcbe2b6a460e8eece51b48838ec6c28d6d33858e18df2ec83b01158`  
		Last Modified: Tue, 18 Aug 2026 19:28:01 GMT  
		Size: 2.5 MB (2526801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a0bf585f2fd034531c2117cd6c2ab39d445efdda061eca713936762815ce7f6`  
		Last Modified: Tue, 18 Aug 2026 19:28:01 GMT  
		Size: 11.5 KB (11503 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3b6225a54c9d4d4fb476052aceda74c37adb5688d82898f9c43773821d57add9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98354722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000965dffa09e1a1c0047f1dc2f617ad444890b5ab8455c763018e697fb4087f`
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
# Tue, 04 Aug 2026 02:39:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:39:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 04 Aug 2026 02:39:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f9c85e151694e7ab0a6cf9778cd427cdf4b00a130163dcbeea3cc6c5f378ce`  
		Last Modified: Tue, 04 Aug 2026 02:39:53 GMT  
		Size: 64.0 MB (64044049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f916435c735ee0778dd5f20b379d67e38e33ab2634f5fea9833c9ff0ee31ac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f729503706d9edaff78306f9771268aa92af4d3d200db0f9d0e0534b9549bd`

```dockerfile
```

-	Layers:
	-	`sha256:d0721d10c36bf04c79a181afa9c2c96dce553bdf5a52fceb0d22ee1acdb7d2a7`  
		Last Modified: Tue, 04 Aug 2026 02:39:51 GMT  
		Size: 2.5 MB (2525132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7acf342c8d7f7a1807795ac609ffa009adb0e9603b19b8223573e6142599ccb`  
		Last Modified: Tue, 04 Aug 2026 02:39:51 GMT  
		Size: 11.4 KB (11393 bytes)  
		MIME: application/vnd.in-toto+json
