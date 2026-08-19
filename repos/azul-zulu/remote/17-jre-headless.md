## `azul-zulu:17-jre-headless`

```console
$ docker pull azul-zulu@sha256:82415599e7c66a3b218edfce216f8532d74cfc971ff18c7b3c7e7ca2ace85930
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c0aa3a4516e5634f04b0750ce8585ea844a5d76ef51fc08d21bc5f1940f03f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98829140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78338c168b5f2aa7be4823b3a02953a2221e7a00579b3b2805695440838b330a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:53 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:53 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4ab7783058dde2a59446f5a87693668610eb441f19aae65e2fcf1e32ba689d`  
		Last Modified: Wed, 19 Aug 2026 17:36:04 GMT  
		Size: 69.0 MB (69048375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:edabe441629dfb5ec2e923301dbcc5c6b74fee783dccc5693e74b343aefa1b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2997f60be506b178af93099d3e0235ca4fd0814330bc7b5730c9818d54dd9268`

```dockerfile
```

-	Layers:
	-	`sha256:e8801fb014e117cc47ad1d722b6a14d3ec6965f89ac5184ba8b324e7586d7f03`  
		Last Modified: Wed, 19 Aug 2026 17:36:02 GMT  
		Size: 9.3 KB (9310 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0d6323ac54744d64c9a85a97d4a97ea2cb348b4a15174ff5421b859cb3e02105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99231357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9457e65daf3556ec1d7bebca326dddbec1c2ed891cad7d61da5fce03d48902`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:57 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:57 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75cb83b23cb2a072ceea83c6366b36dbecabeac4954ce5314744eb490167ecf5`  
		Last Modified: Wed, 19 Aug 2026 17:36:09 GMT  
		Size: 69.1 MB (69087748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2b1477b3300e2e3000474c52be8f644882d3e1a85fd65f2dc072d2e5c67d91a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fcb32400a5179786236118b1d169e2d239a9b5cc14871bb7d7d62c2f0c3b4e`

```dockerfile
```

-	Layers:
	-	`sha256:d06ac63a57849a772e1f04397cc493e05e9e8bb1baf5ef2c73083ac864dc77e9`  
		Last Modified: Wed, 19 Aug 2026 17:36:08 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
