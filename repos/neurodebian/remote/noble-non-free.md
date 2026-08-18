## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:8b7f3787f1c4ba9eb53b319e5965521257173a695bf4aa7c5e09a572bf5a5e0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4d1e21aee4455b8e5e804aab93dc0de5684ff0dd25ca65c9b7f3232f8b06b4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8062a94ca7b4d40ab9f228c2fd6fac55861ac98bc2851552b4e2602b1ffe87`
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
# Tue, 18 Aug 2026 19:24:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc023b9a0e1d4a3a99b8d302207ce9d0e6fbbae344fd252573d2f7b3f9b70995`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 3.6 MB (3565352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481ed492505329b3b880d0de85124c0400d19fda81bba618f13bcc8ebedd430b`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eb3cf108a4c8e43793578e4f8d24d21a40b179ea15f714df1aae8131e88d54`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7999951399165eb1882d71fc22d48b1c6b8f9e77e9293a6cc812a9c7083e57`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 105.0 KB (105024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d4ef2f666677a25d83a4609f05c23828e008f5d96bb6bc0ca0d8babec95f28`  
		Last Modified: Tue, 18 Aug 2026 19:24:46 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8046446c1e466f34d0c937969904de8d4620414cf9eaa1f102768bfb3b9a9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e39789e5e78fc8570764b5f1290d83807db93b3cdc41ae31185464e34529b3b`

```dockerfile
```

-	Layers:
	-	`sha256:27cbd4130c749ef0158da8a79386c1efb7d32487ef7f77050d9715ce21a75931`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9895ff975d0caa68aff006bc35f86d7c831c8d54862b5f54ab6e5fbe1a4d505e`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:098823fb2095ecb9a2e304031854ef613abe0ed8963b5de41ea18442836abf8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fb258a56aa2417082aef6976806938a0f7e486681634b6cae7d801caf39542`
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
# Tue, 18 Aug 2026 19:24:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eecd207801e195b39e571e41e3b57677c1e6f6c992d0026ccd51df760a5dc174`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 3.6 MB (3562445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099734a317c85b10e352c503b24c9201dee0512c9110479dbc78778231db7d46`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b708ca8547505a9092ca46240794b9a4cda3dbe7f69a09c2e9b3ab1eb8dec0af`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce285ad8458b0c8fdda4aa945b4346bc356e29f3426cde4c45979374d169184`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 105.6 KB (105649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84903e7ce31c974d17dfffc6ce49226662ecce0b7283025db1812b0b7faabaf1`  
		Last Modified: Tue, 18 Aug 2026 19:25:01 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e7586f834e7b1a7cfc265694f779d883df8babc8fd2610efdb2d7bf0e2f7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6fa8fc6a7f74e4284397a2131d0f803fb0d2f654a158793e0f97a7e9c07755`

```dockerfile
```

-	Layers:
	-	`sha256:c7a7a3c93386f41428e0ac8d94149f46fe0040c5fdfe73a50411efe44d2ee2fb`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbc9136e9ccc7a623b822e2d2cb101a018fc631c855ba2c9c31881f373f95e1c`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
