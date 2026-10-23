## `azul-zulu:25-jdk-debian`

```console
$ docker pull azul-zulu@sha256:7362b34b91d1f6687a566e12457160aed3c67c9548132776005818ae62ff97d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b3fc29ab97f05fa3d5b9f73f550652bd5bd7cb9e138e26908c9ea2480eb4bf97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214059259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1029bd14e31cee777bdd65210ffe27940cc8607fc22a01a01f8606e4bfe8fa44`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:02 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:02 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:03:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fced18e476a56675e04fccba316deec656a2a38f44a7c2e3347a988f39d0c7`  
		Last Modified: Fri, 23 Oct 2026 20:03:20 GMT  
		Size: 184.2 MB (184215680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3b2ab99614f7cd98ed24b548226ecc22e5ea1476f843cd5afdaa6aaed170325a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7bb76a72212120740e7c8350a613a16de980cee014cb4bfc48cd878527c93f`

```dockerfile
```

-	Layers:
	-	`sha256:b285145a28973b8a80fee2fed869daf5a14befc87692bcc14f64e08bf3622ed5`  
		Last Modified: Fri, 23 Oct 2026 20:03:16 GMT  
		Size: 9.5 KB (9503 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a6d27c23e334bd16305a1f21ac016a63b34bd4d884f9a68f196df42782a16659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213541174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f8b657e0668626d233b7574ae05f6867fb1c013862bae2a4975211c7871aeb`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:05:07 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:07 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:05:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:05:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39a57e35dd297c94eb6853c9e1834f1c6472eb4e1fd1f3edb483d550c7a1ed7`  
		Last Modified: Fri, 23 Oct 2026 20:05:28 GMT  
		Size: 183.3 MB (183340696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:99339d1ffd260591ed36bc3c0012c11831dd9882f15fd288d0f5f1180040c38f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09b76d78e5ae7ed107e0cb17e8ae70acdaa883ccb696d96a39bc900ff084835`

```dockerfile
```

-	Layers:
	-	`sha256:81015d3ab2ebd5631d4b5b1223315c4092cda8f884c31d2a086f267f96b0bf37`  
		Last Modified: Fri, 23 Oct 2026 20:05:23 GMT  
		Size: 9.6 KB (9620 bytes)  
		MIME: application/vnd.in-toto+json
