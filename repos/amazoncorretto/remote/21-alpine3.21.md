## `amazoncorretto:21-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:392b286e53c7f4cd366bd2f752f509b7e24de9f414564bccd7d152a58214a8b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:38ac7866de053200eb9f2365329023209f2725ea09802d4853727b64ab18c54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165818796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf3e69690feff75ba4607bd7fda5b4869105506c625a597cb2579ca6c83f6fb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:33 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:12:33 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:33 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968bc4d725c568a035e60b5d282901da18c5aa9bded5003cd26b61c19c4f87ff`  
		Last Modified: Thu, 23 Jul 2026 23:12:53 GMT  
		Size: 162.2 MB (162171921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:55b124303bab2090fc2f59bae7775d3c0390c3c7aec693c8d9e26a21be713081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c648c59413566b86ca38cecbfb6411a78a29fbc55c22d1f700ec45eca053a74`

```dockerfile
```

-	Layers:
	-	`sha256:b582f9788b857443cec7728f6401652ea8e3397a5cc6666cf7a085b96569d7d7`  
		Last Modified: Thu, 23 Jul 2026 23:12:49 GMT  
		Size: 587.1 KB (587110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d679e980a1c82619c9d58eaaf7bddc6e83a174a4d028b47c5bd53bbc7e57918f`  
		Last Modified: Thu, 23 Jul 2026 23:12:49 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:639acd0015bef93f5dc8af2b4b5995a19632169b4100290ee628e2b3c89e05c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164160129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b559ccedee9198df088ebfc747afba4bafd061e09be66c154a7d063b3926de4e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:14 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:14:14 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:14 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0fe0f87d0fd98eb6e4dffe55d6462154af9bd6c5a84cd2ac87034efddd95e6`  
		Last Modified: Thu, 23 Jul 2026 23:14:33 GMT  
		Size: 160.2 MB (160165664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dbc309de9c2c35237cc6912d82d33c97be62042bd532fe9caf8defccecd6fa01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.0 KB (596006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a73e46400e88ef592fea25290f5574e5b0136d974124f05c33d4d8ac83f81e2`

```dockerfile
```

-	Layers:
	-	`sha256:a96304d5254c713030cc03b0c9e41223ea5b5f8d04e7d64902cf06ed753ccb94`  
		Last Modified: Thu, 23 Jul 2026 23:14:29 GMT  
		Size: 586.5 KB (586529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc3ff298cceec5ae9174f63c9820d8ecd44b32cb047a9c1c3e6eee54124cc0b`  
		Last Modified: Thu, 23 Jul 2026 23:14:29 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
