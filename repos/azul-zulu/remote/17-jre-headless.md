## `azul-zulu:17-jre-headless`

```console
$ docker pull azul-zulu@sha256:105cdc8149e364baaaefbc0c1a666b98f00fd49989e6e848fbb08a48485c269d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a4c07e9c42965cd581aa041923a5dea758827e78b89c91a8b0d9e128d82eb632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99067230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab7970733a03a0a25ff6b181b8ff4c6f70cf57c211324c0fe58b948f59ab282`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:42:22 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:22 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:42:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84885c9f88a8a05ec2838668c4bf64909e564cfa78dff79fdb5f826531b9e060`  
		Last Modified: Wed, 18 Nov 2026 02:42:33 GMT  
		Size: 69.2 MB (69211098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:95e23d8e800e9fb173cae2012eaf9961a3c52793be24ac0fa45d721ade287286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9041ee58c5c7153f2b17ac5ef9d8d3b65b7a7ff71038dac83b1219128c90542`

```dockerfile
```

-	Layers:
	-	`sha256:e8cf9c9b4d30519382a6c85809752b4c1fa51a0f6dd5eb9d73c20cea678d41bf`  
		Last Modified: Wed, 18 Nov 2026 02:42:31 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e9b66a8d324f1df444ac57f01311f52ebfa75cb035ac63af870da11eeb7c3d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99500115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63df25b3ace5b8b5dfab3b8d7ca62a548887f48292260bba341a3ca3336eae81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:42:16 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:16 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:42:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d8e43b6dc5cb23465dd2a9eff62baf49f817fe697dda4ab5913f1576d393ee`  
		Last Modified: Wed, 18 Nov 2026 02:42:28 GMT  
		Size: 69.3 MB (69286078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:92117b561b04b3bb7c5fc26f5b11b3926caf39fd250dcf4f9600087151478ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821911e0709d6a37f1921239238fed1b5df1be150c569dcf6bcf372c8c347a3e`

```dockerfile
```

-	Layers:
	-	`sha256:0f7dba1f67fa803442b9bc52232823e8ce027985a3f4711476363133f47c586d`  
		Last Modified: Wed, 18 Nov 2026 02:42:26 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
