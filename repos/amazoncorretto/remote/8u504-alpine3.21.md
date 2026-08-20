## `amazoncorretto:8u504-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:4b63c8ac851a1c5af93e8cfafa7fd4ccea29d16ca99bc226793965d47b50186a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6f8076cd10c04fe88497a887eae609492c1e71dfd0776c5347f8cc391ce4b383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104644968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99b6d76322400dc8b69bc918d803e501697065e9e3d5aae717769681a6813eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:32 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:32 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:32 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:15:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e58f1f3958d75f229cac68ef447b36accade07d8ef1150dcb3183650b155441`  
		Last Modified: Thu, 20 Aug 2026 17:15:45 GMT  
		Size: 100.7 MB (100650503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bfa380e03c948674a01987e2495b509c3226aa261a5674da1aa14aef7cab403e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b409a428177e341c5470bed7f3c2bbc34d6bcbf72b8b22df0b51b6a956e39c0e`

```dockerfile
```

-	Layers:
	-	`sha256:a71d97e779a42b4f48cfc6811f231c3c2d408770bb8528fa9b91828c72290361`  
		Last Modified: Thu, 20 Aug 2026 17:15:43 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:270313b7bd40b96e904997a5e7d9a9d84f693e4538223691bb13ebd76a478621`  
		Last Modified: Thu, 20 Aug 2026 17:15:43 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
