## `amazoncorretto:26-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:b0d0e8325723d02d0103df1473a979dc861ae4f72369a38cb2ff2f292bbe405e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1a209cbd45a811d965864d7f6b41501c802451735128ad9712685d7a149a5dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189347142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d1efb8c701db7cf90209931f5e31981fa46217dc729f5dd2888bb8efc8e3dc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:32 GMT
ARG version=26.0.2.11.1
# Wed, 21 Oct 2026 21:16:32 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa27d0428b189b6b3443f077442167c8f2a40dd13b456783cc14bcbd67cbcb9a`  
		Last Modified: Wed, 21 Oct 2026 21:16:53 GMT  
		Size: 185.5 MB (185494915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:27a8e95f21987a74ba8fa555459d5dc60bc7696a85257da4cf5f31ef84d64f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.7 KB (595691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01c5ba2f46f114af5d8f2117f29f57bc42e8d957cea7606161f4fc4f9596755`

```dockerfile
```

-	Layers:
	-	`sha256:fe24caf8864dd1568b257a53a20aa8769f005882efb91f25bb13120b9566add8`  
		Last Modified: Wed, 21 Oct 2026 21:16:49 GMT  
		Size: 586.3 KB (586319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1bcf66a37e1b799ddcecc32c125e4da77c96226d3dbe51a900c2bb1f46508c3`  
		Last Modified: Wed, 21 Oct 2026 21:16:49 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fb61454e1a84ea6c2d41b22ffe7f68cd4027126b90da38f8ff52b1e8f304d0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187221586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9832e4ce4db12155cb1b6a3a9e734a69863da9e0e266543f2ec23b8e0087f5f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:10 GMT
ARG version=26.0.2.11.1
# Wed, 21 Oct 2026 21:17:10 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:17:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:17:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03136424dfa417f96edf3e36358e50bc82947e7676d7ccdf195518293b5bedfc`  
		Last Modified: Wed, 21 Oct 2026 21:17:32 GMT  
		Size: 183.0 MB (183032092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f19dc7994b6ceb83018fde9321a43a1f1259839748f5715e3323e0cbcaac72ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4913e3f6365a68747ff6306550032053886a02c9bc69277b4c8090ba13fd26f`

```dockerfile
```

-	Layers:
	-	`sha256:e5f6becdc0c2aa2fa5d84d4bfabfce6ccb6465f2ce73396c5f046582a2df9c2b`  
		Last Modified: Wed, 21 Oct 2026 21:17:28 GMT  
		Size: 585.1 KB (585085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:784c4afc7d331da7220e3d2ee01ea47f09f6da62cc5130bbdf7eb808dba848db`  
		Last Modified: Wed, 21 Oct 2026 21:17:28 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
