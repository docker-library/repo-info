## `azul-zulu:27-jre-debian13`

```console
$ docker pull azul-zulu@sha256:25c2e1dfaa86b9c908a0ee5d16cf80bcc3fedbabad57cbd5397ff51551699f28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9b3e26be23f93b2ea16a1d0300ea0d4d1b3b3c5473c691c12883a0bdfade8946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120945047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669b7c79f88afde3c3ab20e8509d4e134c2bbe352492db225157a3ded8f0c6e6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:58 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db45458499bc931a3286a0cb108f1650ae03badc6dcd60aac22a4b095aea8d76`  
		Last Modified: Thu, 05 Nov 2026 07:38:10 GMT  
		Size: 91.1 MB (91088915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cd5fb9dbb17b9678809223d2f114e48018a0dbc1715676466a12fc965dee60c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c2647cb703f0e1765f2a7713fc00d2b67c9e088ce45bb731de65d16229b587`

```dockerfile
```

-	Layers:
	-	`sha256:dddf6ba803ec680c9dc70ba7cea7849806718842583a809865d2b9eff361f3ef`  
		Last Modified: Thu, 05 Nov 2026 07:38:08 GMT  
		Size: 9.2 KB (9203 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9477b58f0e618189582f4e353c25f832fd4bcd18f97bc9b9861d836df41f6dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121190813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54fa427f2beac6ee3d755035401c0986be7a95f680cc5a3575c9401145d3be7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:45 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7da6c94a5f79ac7d723583f2c90c9c025d080c58ef5a0c4f3185a7429ae524`  
		Last Modified: Thu, 05 Nov 2026 07:41:59 GMT  
		Size: 91.0 MB (90976776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9dcb5581ec0dc06e2f3976766d8ccafce0882555915e62cd97759fbc9b977022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239938d1d0991be4d326e239a98ca6baff1ba2bd32f6eb22e95926a6f4361ea8`

```dockerfile
```

-	Layers:
	-	`sha256:9c9e8bcff0d714eb2f5c56e94a36ca9986badf1ee0db5b4f36caeb1ebe4b66e6`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json
