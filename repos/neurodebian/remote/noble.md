## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:4f9c01bb4ac31c666a3ee8050671bedbe73c0b2a19db02c836d9bbff01aa21ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:0716bb6031a9d4c0f6c955527adf5c175192d1109d36755f000c7da93e1f0196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33438449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37655eba145de32fee4207ac63633b0a5c0fc9a10e78854b2ccb83795a32c9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:32:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 02 Oct 2026 01:32:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 02 Oct 2026 01:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9d9c5861f34119e0b7a526e44a44ae7108256fc2c319ec22a20d28820abce6`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 3.6 MB (3565919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca0c4c854f2e8f1a7f05e1a5ea7586b8920ee61f59e99427cbfdfec08f0c55a`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bdcb6be0a358a0ac5936d03b8bbd1418d091118db966f23764700172325422`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52d0673d9c58668ca1f99e6818438527a3107f1901235caa1ef87f3adb689af`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 105.2 KB (105198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9a3adcd71b81e80e0c12426d01013d47674ef9b7fbe8105e3b315cab38fc7d0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88e3e1fad4b89993ad498c68e673b3c3885bf983cbe43006cfab9d20508fa8c`

```dockerfile
```

-	Layers:
	-	`sha256:27ca0b354e41d297d6e8f65d4b949b66b3e748da424d782b97a5e96356da5285`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 2.1 MB (2120957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e2eaa40921c682ad4447daf5715666d890949502fce236b63c3cc475cc5533`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:af7e70241196ae9de18b0225263d3b7b327730f1d0834ce020241ff53a321a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32611888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0000533854e2de08b50360ecdb75ddb4c55dae5d243dac04f060421da0e2921f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:31:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 02 Oct 2026 01:31:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 02 Oct 2026 01:31:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24db5596aaf7743afb8951672ac064e2b3879f9fac44b4bfeec803c933761af`  
		Last Modified: Fri, 02 Oct 2026 01:31:56 GMT  
		Size: 3.6 MB (3563060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1164bf64f1f8418680f25249b4a924d0525d3e6eb7e574adc95b8bddd5dcca`  
		Last Modified: Fri, 02 Oct 2026 01:31:57 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f6c6c79d37ae13c9069c21f4cd19ed6a60ebb366e82602fd6fadcb4f4677a6`  
		Last Modified: Fri, 02 Oct 2026 01:31:56 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89079a0931bceb0f6d7ff3a097113c5ff64a5a4fc73adc42dc13ab349ad27173`  
		Last Modified: Fri, 02 Oct 2026 01:31:57 GMT  
		Size: 105.8 KB (105828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:47640f87b2554669f1b0e0f81318df5a7ab11393b89798a8f9c09e71d54dc8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecaad39491deb5eaaf5e92b1ed3066894bf7b6acf693d5ae64a553e155a6685`

```dockerfile
```

-	Layers:
	-	`sha256:65e6d4b7e237c20e8e770379a622ec6b878122994fe3cf28803fae0c2150ebfd`  
		Last Modified: Fri, 02 Oct 2026 01:31:57 GMT  
		Size: 2.1 MB (2122002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37e51e89a6f08faf0b109213923892d63cf335a74e1acf6e549bcf37442c67ea`  
		Last Modified: Fri, 02 Oct 2026 01:31:56 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
