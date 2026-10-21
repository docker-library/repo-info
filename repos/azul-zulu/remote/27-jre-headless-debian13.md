## `azul-zulu:27-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:d91c1ad744ed3e570942408b3b22aa6863fbacab40cf6143c145a7ce9ba3b7ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:969412bedd2815e4a5ef322f616fc4353530786dd20421ed19451caf5f8a8e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118886395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3831fcc09142258fd89ec8615e3b3b64740d26b01c3fc61adf909d697b781ab0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:46:12 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:46:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:46:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07ec16d975f74de34ad9c344e1265cdbb5d6f24ecf6197f1a2eab98e1311adc`  
		Last Modified: Wed, 21 Oct 2026 00:46:27 GMT  
		Size: 89.0 MB (89042816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f060e5e840cbf9124fb06978363125f83c28f3c04b94ec64ab3941d359326691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db527af8ceac20cfb42b50a3a1e1be7d1827fae724db18671a1d4d831b93fb31`

```dockerfile
```

-	Layers:
	-	`sha256:985587c44e2647ac4c0ad1606030ed72f9c04fb8935087e73c6515d08487c783`  
		Last Modified: Wed, 21 Oct 2026 00:46:24 GMT  
		Size: 9.3 KB (9290 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3752deff8c1b9a5e1d8f21ed43f24c6390c41d1111bdf2a25197a41732b07ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119134252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990106333d47f59ba059e99eae8543b49b144c34110ec803527d47d24fec551e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:49:37 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:49:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8f5a839c1dbb76ffd105c2832a74a0d40437fb2b48147ac33a8f92c9bb1883`  
		Last Modified: Wed, 21 Oct 2026 00:49:52 GMT  
		Size: 88.9 MB (88933774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:db39c03f39398ee695374f4e018406b9fcc8e753485613596a8deff3bdd749fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57981ef9d19e8b8551dd0a0a58514c3245e449e6aa0137dd2e1317da3a8e8348`

```dockerfile
```

-	Layers:
	-	`sha256:6f0b9dceedf95642db337737fa1934ea280e716233610792133807fa02c97249`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 9.4 KB (9393 bytes)  
		MIME: application/vnd.in-toto+json
