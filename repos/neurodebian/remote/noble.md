## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:f28645eb4a2e1581708a1e1f4255569d00486bd8928fe1111edc141ac415d22a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:5c127038298c2aeb5b38b43e14b00b20c6d214549969721a9cdb85711996d527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e9a5a48bafdbb0ca6f6e7096e2944b8050720b6a1557018d4e44354040a466`
-	Default Command: `["\/bin\/bash"]`

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
# Tue, 18 Aug 2026 19:24:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c2316f3d14a7ecbbbf7cdf2faff41598f8a69e46e68ecb2122ebf814c8686c`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 3.6 MB (3565301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24935fcdef69779d36871d547b0c1bf6df87a770532498c8fc8978b979e149`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab2d4a915902c6cf4b9baeba7f53572da625b288866161106561bb4619a24e`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbe469755289a3a81e224b4ec7945cb2bb80c4195981a928cf08bdd91e866f4`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 105.0 KB (105014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3bba7f1d36209021473aca097151e2b33e9224ed0a4e362a771c46fa1e76c11a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e940c36cd3cc352c3a5d1e3221bd09f5d47ad19bdd6a66fac7da0a554126141b`

```dockerfile
```

-	Layers:
	-	`sha256:d2cea581ca662bdc5d3f9accc223a57eaa3199cf198b9453734e78607171fb01`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59a5fa7a049ede8f54131599b7d49c128ec6a481108294df43df6a3e535a0197`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a15738dfa1f47f6b575fd680a7b8714935e25f08b69a7935ce4e25584909a6c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a2850cab6de742a7c356e7d77dc40bbc5593a0d13a8b70681304fef2aa941e`
-	Default Command: `["\/bin\/bash"]`

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
# Tue, 18 Aug 2026 19:24:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e266538328c0ccb382d092b3de895af780f334cc5608b92f3de287274a8cab`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 3.6 MB (3562493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6e0accc8ff2fa1710a1a78331df3b559f4e1079aa3ee49127542c3d0b0bb38`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14977ca124fa8877b1c948a4c527481d09b4fa7f50c646e43bdaace03e482d4e`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bfc0baa244912b89a98433df057af2d026c48fddb728a11c2df169b1b82504`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 105.7 KB (105663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6b46016ee4298af53f3c0692466e2b8bcffb362a6be3a1aa469080a2c6228284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1523a311444a3a5789c721f79560f5a50ed07d6672403d33126f70c02d58a2c2`

```dockerfile
```

-	Layers:
	-	`sha256:e7582cd78150d32a2e729d41f964cfc0b5f506505f3f2ee99b372d89eb5e3c5e`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0ba04cabdf0e842a3172094e17366bab5a4123481e8cb74d09a13bd398747f9`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json
