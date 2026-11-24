## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:1f959c2806dbde3f8a90d722b86030f9141c863011a7de1f0259db6ae6717e1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3a20426d069527c2ba0ffa4d7f3f4d32eaaf41b4698e175637de1cda1205c075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59797067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d1be872f0a9de7d8780eac77012b5cf02d85544627f17e78858df7c9ea13ff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7583622af9c94ce113de110b671cb9a557d6b8d088de8284abd5edd60ec3216`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 10.3 MB (10294078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a6d2f3be76f30475d171975723732e3320c1624d924b05e67d0320f8f3a192`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b522db3fe8951d4016168610a48f7ec4d3b0319eb2e7868dafb41ae7e3f2fd`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2490208194c5f6cac66e2b1bb23fa3b08cbcdb3f955f87c018f18548797ea87a`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 90.3 KB (90348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2244bca4e7fc9964db82aece0604d6049c1f7dcda7e657369c6c3975bb6042`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2be2950da03deb62074622e81854f1e5f99864e35db4c6065391a1b3d2a34233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dad8cdeaa0cc45939a4b9e0dc53713c6bae3d0bebcc6ef7ba2085f98ba7b497`

```dockerfile
```

-	Layers:
	-	`sha256:051cc19d4f7ce42c9d7f687aaa679859c6d8a29e69e174e146a29e758f60a541`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 3.6 MB (3623371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a1d961999d07fa0722227e6c1c45754aa89d53562d1ea59b38dc10b601e610`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 16.3 KB (16281 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4cd24211f0e15647a5f0aa6eb6df52a207818ee3069a9686d640865cf6de7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59943327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54dde7aaf1e38f218f72476a92d96bcd7121fbdf8501adfb09fd183c4819af8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b208b9f2830596436e5566c417972553d43675252aa44f2dda28c0e19b1f14`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 10.1 MB (10078828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb911e04030e6616befc55be4532fd97a14f382d92b768f157a82372471e3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6200e0fdf6a0175e0f60cb3fca86939ba856ef7df0c3ce593a2d693d0f130920`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107074aca3a1ecf70edf613c1e9d0c5c62ad49b044fd2536daaf5ad192c3492e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171ca9253076c09f3d7a89d6e5184e05d11ddc7dd542aa42d394c8c30d3ea558`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:10298e5530f610f115e840e2b65279a433476aa84c5037629725e63901ff1b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f426c022c8e36c52f4b68b3bbaaa22879b797f516d1b566a5d9c9b862b39114`

```dockerfile
```

-	Layers:
	-	`sha256:496bbcc37dc7efa68117fdde7f4a8a895ca4c85e99eea47f7514b68b728963d9`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 3.6 MB (3624261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41948f655f00f039b4061e6d2897dc4fe7ac13a3b9cdda2be116071b0e97b291`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:af1e0430798153bc3d03ee10718be3a0d64c83768b1cb8bc5b5f17e0e8988b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbe2c72c670bf15e1e949d87adc5b883405cb492489e4e16bf915d59a8b0a35`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17bc1b523832df9e70d5c6e3bee797a29f073a501220873e38fa394f764038b1`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2fc313ca2acab1dc644093355cc39cdaee3e9fdad7fd30401683d71081dd64`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130a07ca339f557e162eb91ecff7443baefdc50adc511d62cf2f7272c460fcbe`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd5927ce40cb99ea1a91ba898416a818b1ee5b711a2cf745f062e857cefaf8b`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.7 KB (90736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322bb34715f1deb4e8ef57b94d4fe6fc71d0f4006c412f30e32f6bf2428ce73c`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dc566b903626fe3a3cc42c8d0d8e5138dad614562215531975207106cbbf3267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b06860354c5b0b58b20be74a413eccb1a7bdbaf6c13b64acc5975ed9c5507f`

```dockerfile
```

-	Layers:
	-	`sha256:e526cbbd7eab6c2541f9413b7f00a2138e53ce5ede1e418bdd8d4ccd9934afe7`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3621321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd6c77515a6bd0080639575b8159369ea5d689f35059ca2d8c0911d1401c473`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
