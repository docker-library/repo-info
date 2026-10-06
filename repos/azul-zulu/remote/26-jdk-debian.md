## `azul-zulu:26-jdk-debian`

```console
$ docker pull azul-zulu@sha256:eeef361638d605137d758a2a9a7c2873adb107088bbdd14dfba92331aa94e34a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2b3883755f059b2608811fa42534f79023e0c918ea05b2e2aa7b00eb9df391af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217353135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8bab66fad92cdae5fa4ffab83c8c304352a6ba2f5af2bdab8a9bf2e57edaac`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:23 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:23 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 06 Oct 2026 01:40:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a84251fd01dfaa9f780915f1f819c10fb206ea81ddcc42a1527c2cdee6c70c0`  
		Last Modified: Tue, 06 Oct 2026 01:40:43 GMT  
		Size: 187.5 MB (187509785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bfa0f968aa975979c25f74ff16e1a49634dbaac208a452e9328d57adb00e85fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca48b85492140964f26b6f96450e9631a63bc07b2d62ed7755e2fd68a34b99d`

```dockerfile
```

-	Layers:
	-	`sha256:2daf516676826a4033923f26ed4607f18cebc5ef8444ab87a81bc7913b0f8be9`  
		Last Modified: Tue, 06 Oct 2026 01:40:39 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:391a9b15b1ae6d81fdb214271eb48e81c3e0f716e923bb1facb6b431eca53abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217412444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c412df1e23f4613610d211d51738bae44fcf05cc3563d4b08af36a7c673a2b87`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:39 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:39 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 06 Oct 2026 01:43:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321c81797024774ef012872d6fbcb04630c583612b72d0df6b3965c4410e99c8`  
		Last Modified: Tue, 06 Oct 2026 01:43:58 GMT  
		Size: 187.2 MB (187212162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:94cd5cf59dd383b3742fbc8f75cc63654d5c55a992bf0660c6eecbc05ecc8c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8003e2a965909d174c7d6c9ec973f2eec37e462897737fd6d05ba3c11892f7c0`

```dockerfile
```

-	Layers:
	-	`sha256:79e7c8defca294b0461fc01c38f0611e74c6f6be41d14cb73da94068c4cb2ee0`  
		Last Modified: Tue, 06 Oct 2026 01:43:54 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
