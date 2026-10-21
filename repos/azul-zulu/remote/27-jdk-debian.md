## `azul-zulu:27-jdk-debian`

```console
$ docker pull azul-zulu@sha256:ce0bf64d14ddd57394d08b6245cf5cd78a0679d784e601e268cc88dcf7c33dbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:15f65491913fc65acd9b5392d58440531bbfdcf6d04c51e70255c0502bfacc8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215363876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309aaf8fc24218379cbc8ca63514c5518c3c8550d55d24091a18a7efbde8b6f3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:47 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 00:45:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6940601801885a8ed21f2848e7d6c8d031dab3562d64b2900cc8cee211961614`  
		Last Modified: Wed, 21 Oct 2026 00:46:05 GMT  
		Size: 185.5 MB (185520297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:37df412381aa3a82de325e58a4b57734c1dc7f8c4291dc46f2935fc9aaec0a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46434c5fa580332c1c304ee8b745679c3933e03ba010cd50f6ac0e67223832d4`

```dockerfile
```

-	Layers:
	-	`sha256:ec641ae7afd89f9e4f7a11087f568cae499600b52bf36ecbaf36a5b1fd210a57`  
		Last Modified: Wed, 21 Oct 2026 00:46:01 GMT  
		Size: 9.5 KB (9492 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f7381f0a4314eadf4c713ece9d53ce2b04b17638533613e91f956f161a93268f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215373642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde632ffa0f892fa892445d85bacbf257e1353d5603ec9f33dea369dbd394bf8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:22 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:49:22 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:49:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 00:49:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25282fdfab835f56ee95f156745085e0d7c29d85e5e669a70d89581294fea313`  
		Last Modified: Wed, 21 Oct 2026 00:49:42 GMT  
		Size: 185.2 MB (185173164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2fd9a14e541bf8f50c5e13317ea6cd6495332cae3eb73568ceb242525e0dafef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e925fd1b22c54813a94f74dddb288c057cd16a3515efae599793daff60333777`

```dockerfile
```

-	Layers:
	-	`sha256:478b533a153066fbc6709f0d23a1b9e66317e51e51fa2b31ef5dd6eeefdf29f6`  
		Last Modified: Wed, 21 Oct 2026 00:49:38 GMT  
		Size: 9.6 KB (9608 bytes)  
		MIME: application/vnd.in-toto+json
