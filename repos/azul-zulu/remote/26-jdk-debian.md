## `azul-zulu:26-jdk-debian`

```console
$ docker pull azul-zulu@sha256:4bbacb5a9b9852de95a949a910345fc9b9e65ee2fe15e319435dd537b8ad863a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9be67449a4efe181944e06d0311eeecb0d45fec212e95b5776dbd9a7a9a4fb2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217362077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e4d2e65bc1951a7a9a139024f8e517aa4e413566c58817864c089f47dfbd93`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:17 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 07:37:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d1aba44441db4d1e67fe951fbf2f9fb75602181011ed104a5e2dd8a4fc445c`  
		Last Modified: Thu, 05 Nov 2026 07:37:35 GMT  
		Size: 187.5 MB (187505945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5ccef269a8da2e1077f424c0dd6a1739588cb151accb483ce472c3830a48c268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28fd1d041caf2ae7fe463f7081a24941ef0a3d9fc22bcebe5d3f875ea1eda2fc`

```dockerfile
```

-	Layers:
	-	`sha256:65327c150c3191ee08b6fc6c4a8c56dc84f88cf88ffb044ad42e00f03b17b7c7`  
		Last Modified: Thu, 05 Nov 2026 07:37:31 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7ab4749a4628106d64589056da4323c6511b55d971f0c84acd22e4343b2eae1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217425803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12676d09d4970ecd3697102863fc9419c1d8ec9c5ed0fe6271555bac95187690`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:06 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:06 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 07:41:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e65738924ab5e3a80b0cc9b69ee15090e42b804717f01d4d5b2bbe6c50b4a3c`  
		Last Modified: Thu, 05 Nov 2026 07:41:26 GMT  
		Size: 187.2 MB (187211766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d07127d76d167a4bd6ec1d9992d5f009d7af6c4ef0deb7938d640d29cc1e7fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4190614fec05334c9fab65306d176574b63718eddcd24626b7d25ab073f9a534`

```dockerfile
```

-	Layers:
	-	`sha256:ad1522bfdc03fd8feca81bdd0b25314d6220c1861659421fcff280db65ece5e8`  
		Last Modified: Thu, 05 Nov 2026 07:41:22 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json
