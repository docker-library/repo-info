## `azul-zulu:8-jdk-debian`

```console
$ docker pull azul-zulu@sha256:fe006e065a2d5cc6e029d92b50be5a5613141968ec06928105d9ba93b761d5d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:97609df40916016e4a633603a302a54ba241993301f3c0326340c45c31aa50a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.4 MB (91367558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff91297428c3a3accad63e78fa2d67e92ea5f3a535e0d89b61fc6d4b6c5afd1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:00:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:00:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef51310d22d859a750772ba7a5a22c709a73ef97f2280c4df30d309643f3fa8`  
		Last Modified: Fri, 23 Oct 2026 20:00:29 GMT  
		Size: 61.5 MB (61523979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:334b7874a44658f69a12210ea2233369e7201c8bba6e55ee31516e2df6d0370c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eaaa79466c4efac7c7efe56eb4f5fd51e0daf4821b0c40dfeb55938780571bf`

```dockerfile
```

-	Layers:
	-	`sha256:d028719ff0defae52c92ac90280853b33db4a2e97185570f8a50030a8f76d759`  
		Last Modified: Fri, 23 Oct 2026 20:00:27 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e2cacbaa13e1a61d4dd9646a40aae69ea3ba3c2f1d72dd89025a9701100ef72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92049831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1dabdd4075968adda0e9492af88b7f7e1454d2117cdd3b029c4121640f9bf1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 19:59:17 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 19:59:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331c6056aa2a70d0c2687c13c8d89e73e98cf1932bee2aa7b3cc80cd8d6f8b06`  
		Last Modified: Fri, 23 Oct 2026 19:59:27 GMT  
		Size: 61.8 MB (61849353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9b68ab7da0c43ed41547e7cb67abac87adc61bc3bdfea475c3dfe0d4d2a97671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3df9f294c1779fb978963ef8f300786c450ff938bf5dffaf22adf0dab710c4`

```dockerfile
```

-	Layers:
	-	`sha256:2f645dec29cb05c73af7a799463f800896578869f559e9c05e03796194cb8220`  
		Last Modified: Fri, 23 Oct 2026 19:59:25 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
