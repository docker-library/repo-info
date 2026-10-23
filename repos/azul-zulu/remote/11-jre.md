## `azul-zulu:11-jre`

```console
$ docker pull azul-zulu@sha256:f8fe889f743af76028a762ab8b11d8b6cc7272026fcfb9960dd4861fb1bb9cbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e362ea925c9252ed95528ae62382cb0c438c6deabdd70f17925c17633571b839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96547656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a1f7a3f8a47fdaf60b0592726b2a3fe909a471b264ead700020c165951a94a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:42:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:42:28 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:42:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:42:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717e0873d01d1ad806cbd9de11baab084348367c9029fdd9cf1033356fb10124`  
		Last Modified: Wed, 21 Oct 2026 00:42:39 GMT  
		Size: 66.7 MB (66704077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8420c10693446665fb79256635a27763b557c7cbcfa9a6f328415511f9e90ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfbb9e1900473290366cb64dbf8a6f67b67bde5f1531d3680c3581caa1959fd`

```dockerfile
```

-	Layers:
	-	`sha256:eb624858848fe52d085a47a01529693b4b5ed5fd87b26b743cc886b1827792bf`  
		Last Modified: Wed, 21 Oct 2026 00:42:37 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a96e3ec74f5874ef65634b069db88b93470a26645942a4e3b6669ce0f41e0a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96751240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1b489c6e96012aab17d297308a4690e3e089d3c043dd673f1bbf6b4084295`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:00 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d1301533c0f9d72fed42d7891ace1621159bddaabb0108dccd1b2607286046`  
		Last Modified: Fri, 23 Oct 2026 20:03:11 GMT  
		Size: 66.6 MB (66550762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e2c80e493ee4ed996066aa3eeae96678e1f99b60546a0095cb96e70e10b0401e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63b1e5d7f7fe1589735176c3fc4109a7265a516a4bd3c8e204cee951dfba788`

```dockerfile
```

-	Layers:
	-	`sha256:bb3507b72b87f34c3b926e0c0de6cfc7b5d88c8a4b4e56f8991bbd484196bd98`  
		Last Modified: Fri, 23 Oct 2026 20:03:10 GMT  
		Size: 9.3 KB (9293 bytes)  
		MIME: application/vnd.in-toto+json
