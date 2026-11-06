## `amazoncorretto:25-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:81c31adc5774265ad6715d5bc6210d22b3a89a65e7a140f00c25b587e483bef0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:66d6152809e08aac541063cd84ce9adb58b2110e591ff2d71afdfaa438fcfa43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185293935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e90c5655ccbe513cebe74d1372c61808be5516d4b15151ff4e4fef04d16304b7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:00 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:14:00 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b040db653ed1b9aa05831b96188f29a8e847bfe5ac452dbad1d1805c7090cb77`  
		Last Modified: Thu, 05 Nov 2026 19:14:23 GMT  
		Size: 181.5 MB (181499560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:63917d1f1b5c5fdc5e189621301a7b66f104d37fe1da03b8d6ce699dbd4d337b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e860bdc14036dcc4060b5b76fbbb09ba659210b4e02a020ef8cfed38413d97`

```dockerfile
```

-	Layers:
	-	`sha256:700b4787854e88cd0057ae1eca62e3f924f050a06666ee2606aca8c35cbe621e`  
		Last Modified: Thu, 05 Nov 2026 19:14:18 GMT  
		Size: 592.8 KB (592786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:402a1fd8580b5b462a923d6f447d8763fded5be0ffd90c87a00ff15997bfc777`  
		Last Modified: Thu, 05 Nov 2026 19:14:18 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d50745ed9361927ddb6681986cd6a202afc8e1f7476d3d353f1f58af2d7a331d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183202773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a358d1a3fd45a70d696457a80ff5a22a25864125eeb6a165748351bc0fb5760`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:48 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:09:48 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264a86cc79e0028cd96b72a1ad5f8e570e860411547325194157b8313faa9af1`  
		Last Modified: Thu, 05 Nov 2026 19:10:09 GMT  
		Size: 179.1 MB (179075388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e50e7905a6835b0d3160e663b6905041fbd0f2d0d6e212f2ab05b2839c160945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04f83f6d2986b87d6fc4a5b0b4f45a038cd2be051d61cb59839638d61b57639`

```dockerfile
```

-	Layers:
	-	`sha256:805c74d855a5043ff2f59db801b998f9cc47713238b242eb9008d51cbdddfe40`  
		Last Modified: Thu, 05 Nov 2026 19:10:05 GMT  
		Size: 592.2 KB (592202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1abd3a9f594f0c18fea3897677b6b82bfc3c87f39aa704d6073746edd2c61f82`  
		Last Modified: Thu, 05 Nov 2026 19:10:05 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
